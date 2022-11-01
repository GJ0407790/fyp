# import relevant libraries
import os, sys, subprocess, threading, random
import multiprocessing as mp
from unittest import result
import numpy as np
import jpegio as jio
from PIL import Image
import pandas as pd

# Step 1: Initialize hyperparameter for k and n
sqrt_k = 8
k = 64
n = 136

# for traversing in zigzag order
zigzag = [
        [0, 1, 5, 6, 14, 15, 27, 28],
        [2, 4, 7, 13, 16, 26, 29, 42],
        [3, 8, 12, 17, 25, 30, 41, 43],
        [9, 11, 18, 24, 31, 40, 44, 53],
        [10, 19, 23, 32, 39, 45, 52, 54],
        [20, 22, 33, 38, 46, 51, 55, 60],
        [21, 34, 37, 47, 50, 56, 59, 61],
        [35, 36, 48, 49, 57, 58, 62, 63],
    ] 

# Step 2: Get the quantization table and DCT coefficient array
def get_qtable_ctable_from_jpg(path):
    image = jio.read(path)
    return np.copy(image.quant_tables[0]), np.copy(image.coef_arrays[0])

# Generates the histogram from coefficient arrays
# Calculate the occurence from the same position in the block (1 to 64)
# Outputs a tuple (histogram, rmin), where rmin is the min value in histogram for comparison
def generate_hist_from_coeff(ctable):
    # Split into array of 8x8 blocks
    ctable_h, ctable_w = ctable.shape[:2]

    extra_h, extra_w = ctable_h % sqrt_k, ctable_w % sqrt_k
    # To make the height and width be multiple of sqrt_k for reshaping later
    if extra_h > 0:
        ctable = ctable[:-extra_h]
    
    if extra_w > 0:
        ctable = ctable[:, :-extra_w]

    num_h, num_w = ctable_h // sqrt_k, ctable_w // sqrt_k 
    num_blocks = (num_h) * (num_w)

    # transpose is to arrange the blocks into 2d matrix of blocks
    coefficients = ctable.reshape(num_h, sqrt_k, num_w, sqrt_k) \
                         .transpose(1, 3, 0, 2) \
                         .reshape(k, num_blocks)

    histograms = []

    for coefficient in coefficients:
        low, up = coefficient.min(), coefficient.max()
        histograms.append(np.histogram(coefficient, bins=range(low, up + 2), density=False))

    return histograms

# Save image into bmp format for compression purpose
def save_img_as_bmp(img_path, crop_len, output_img):
    with Image.open(img_path) as im:
        (left, upper, right, lower) = (crop_len, crop_len, im.width - crop_len, im.height - crop_len)
        im_crop = im.crop((left, upper, right, lower))
        im_crop.save(output_img)

def save_img_as_bmp_box(img_path, left, upper, right, lower, output_img):
    with Image.open(img_path) as im:
        im_crop = im.crop((left, upper, right, lower))
        im_crop.save(output_img)

# Write the latest quantization table into qm.txt for compression later
def write_latest_qtable(qtable, output_file='qm.txt'):
    with open(output_file, "w") as f:
        for qrow in qtable:
            for ele in qrow:
                f.write(str(ele) + ' ')
            f.write('\n')

# Write constant matrices into qtable.txt to compress
def write_const_mat(i, output_file='qtable.txt'):
    with open(output_file, "w") as file:
        for _ in range(sqrt_k):
            file.write(' '.join([str(i)] * sqrt_k))
            file.write('\n')

# Compresses the given img to jpeg using the quantization table in qtable.txt
def compress_with_qtable(qtable_file, outfile, img):
    cjpeg = os.path.join('libjpeg-turbo', 'cjpeg')
    subprocess.run(cjpeg + ' -qtable {qtable} -outfile {outfile} {img}'.format(qtable=qtable_file, outfile=outfile, img=img))

# Compresses the given img to jpeg following the quality factor
def compress_with_quality(quality, outfile, img, is_photoshop=True):
    cjpeg = os.path.join('libjpeg-turbo', 'cjpeg')
    if is_photoshop:
        compress_with_qtable(os.path.join('Photoshop', str(quality) + '.txt'), outfile, img)
    else:
        subprocess.run(cjpeg + ' -quality {quality} -outfile {outfile} {img}'.format(quality=quality, outfile=outfile, img=img))

# Compresses the given img to jpeg using the tables under Custom directory
def compress_with_custom(quality, outfile, img):
    table = random.choice(os.listdir(os.path.join('Custom', quality)))
    compress_with_qtable(os.path.join('Custom', quality, table), outfile, img)


# Generate histograms for constant matrix with all elements equal i
def generate_hist_from_const_qtable(i):
    pname = mp.current_process().name
    const_qtable_file = f'qtable_{pname}.txt'
    latest_qtable_file = f'qm_{pname}.txt'
    first_compress_source = f'temp_{pname}.bmp'
    first_compress_target = f'temp_{pname}.jpg'
    second_compress_source = f'res_{pname}.bmp'
    second_compress_target = f'res_{pname}.jpg'

    write_const_mat(i, const_qtable_file)

    # compress using the constant matrix
    compress_with_qtable(qtable_file=const_qtable_file, outfile=first_compress_target, img=first_compress_source)
    
    # save the temp.jpg as res.bmp to compress it again
    save_img_as_bmp(img_path=first_compress_target, crop_len=0, output_img=second_compress_source)

    # finally compress res.bmp to res.jpg using qm
    compress_with_qtable(qtable_file=latest_qtable_file, outfile=second_compress_target, img=second_compress_source)

    # get the coefficient array in res.jpg
    _, curr_ctable = get_qtable_ctable_from_jpg(second_compress_target)

    os.remove(const_qtable_file)
    os.remove(first_compress_target)
    os.remove(second_compress_source)
    os.remove(second_compress_target)

    return generate_hist_from_coeff(curr_ctable)

# Generate a list of histograms for different constant matrix 
# Outputs (histograms, mins) where histograms is the list of histogram and mins is the list of minimum value in each histogram
def generate_all_hist(max_n):
    histograms_lst = []

    for i in range(1, max_n + 1):
        histograms_lst.append(generate_hist_from_const_qtable(i))
    
    return histograms_lst
    
# Calculate the chi square distance between two histograms
def compare_two_histogram(hist1, hist2):
    # We always let hist1 be smaller than hist2
    if hist1[1][0] > hist2[1][0]:
        hist1, hist2 = hist2, hist1

    freq1, bin1 = hist1
    freq2, bin2 = hist2

    chi_dist = 0
    rmin1, rmax1 = bin1[0], bin1[0] + len(freq1) - 1 
    rmin2, rmax2 = bin2[0], bin2[0] + len(freq2) - 1 

    if rmax1 < rmin2:
        # The two histograms have no overlap
        chi_dist = np.sum(np.square(freq1)) + np.sum(np.square(freq2))
    elif rmax2 <= rmax1:
        # The second histogram falls fully in range of first histogram
        chi_dist = np.sum(np.square(freq1[:(rmin2 - rmin1)])) + \
                   np.sum(np.square(freq1[(rmax2 - rmin1 + 1):]))
        
        overlap1 = freq1[(rmin2 - rmin1):(rmax2 - rmin1 + 1)]
        overlap2 = freq2

        temp = overlap1 - overlap2
        temp = np.square(temp)
        divisor = overlap1 + overlap2
        divisor[divisor == 0] = 1 # To avoid dividing by 0
        temp = temp / divisor

        chi_dist += np.sum(temp)
    else:
        # Sum the non-overlapped area
        chi_dist = np.sum(np.square(freq1[:(rmin2 - rmin1)])) + np.sum(np.square(freq2[(rmax1 - rmin2 + 1):]))
        # Overlap area
        overlap1 = freq1[(rmin2 - rmin1):]
        overlap2 = freq2[: (rmax1 - rmin2 + 1)]

        temp = overlap1 - overlap2
        temp = np.square(temp)
        divisor = overlap1 + overlap2
        divisor[divisor == 0] = 1 # To avoid dividing by 0
        temp = temp / divisor

        chi_dist += np.sum(temp)

    return chi_dist

# pos in range [0, 63]
def find_val_for_pos(i, D_jref, histograms_lst):
    chi_dists = []

    for idx, histograms in enumerate(histograms_lst):
        chi_dists.append((idx + 1, compare_two_histogram(D_jref, histograms[i])))

    # sort chi_dists according to chi_dist computed
    chi_dists.sort(key=lambda x: x[1])

    return chi_dists[0][0]

# Find the second previous quantization table (the essence of the algorithm)
# img must be a jpeg extension (since we are extracting the quantization table)
def find_second_latest_qtable(dir, img, length):
    pname = mp.current_process().name
    qm_file = f'qm_{pname}.txt'
    temp_bmp = f'temp_{pname}.bmp'
    img_path = os.path.join(dir, img)
    
    # Get qtable and ctable from the image
    qtable, ctable = get_qtable_ctable_from_jpg(img_path)

    # Write the latest quantization table into qm.txt once for this current image
    write_latest_qtable(qtable, qm_file)
    
    # Save cropped image as temp.bmp
    save_img_as_bmp(img_path, crop_len=4, output_img=temp_bmp)

    # Calculate the histogram for the reference histogram D_ref
    # The histogram for each constant qtable after compressing twice
    # Each histogram has length 64 that stores distribution of pos i in histogram[i]
    D_ref = generate_hist_from_coeff(ctable=ctable)
    histograms_lst = generate_all_hist(n)
    
    target_qtable = [1] * length

    for i in range(length):
        target_qtable[i] = find_val_for_pos(i, D_ref[i], histograms_lst)
    
    os.remove(qm_file)
    os.remove(temp_bmp)

    return target_qtable

def get_zigzag_order(lst, length):
    temp = np.zeros((length), dtype=np.int32)

    for r in range(sqrt_k):
        for c in range(sqrt_k):
            if zigzag[r][c] < length:
                temp[zigzag[r][c]] = lst[r][c]

    return temp

# Pass in crop_width < 0 if want crop_width to be the same as img_width
# Similarly for crop_height
def crop_img_into_bmp(in_img, out_img, crop_width=-1, crop_height=-1):
    with Image.open(in_img) as im:
        width, height = im.size
        # crop a 64 x 64 patch from the central
        tar_width, tar_height = crop_width, crop_height

        if crop_width < 0:
            tar_width = width
        
        if crop_height < 0:
            tar_height = height

        if width < tar_width or height < tar_height:
            # This image is too small
            return False
        
        left, right = width // 2 - tar_width // 2, width // 2 + tar_width // 2
        upper, lower = height // 2 - tar_height // 2, height // 2 + tar_height // 2
        save_img_as_bmp_box(in_img, left, upper, right, lower, out_img)
    return True

def compress_twice_using_qf(QF1, QF2, img_dir, img, res_df, has_prev, is_photoshop):
    pname = mp.current_process().name
    first_src_img = os.path.join(img_dir, img)
    first_tar_img = pname + '.jpg'
    second_src_img = pname + '2.bmp'
    second_tar_img = pname + '2.jpg'

    compress_with_quality(quality=QF1, outfile=first_tar_img, img=first_src_img, is_photoshop=is_photoshop)
    ref, _ = get_qtable_ctable_from_jpg(first_tar_img)

    # Find the first length elements in zigzag order
    length = 15

    if len(res_df) == 0:
        temp = get_zigzag_order(lst=ref, length=length)
        temp = temp.tolist()

        if not has_prev:
            temp.insert(0, 'Reference table')
            res_df = pd.concat([res_df, pd.DataFrame([temp], columns=res_df.columns)], ignore_index=True)

    save_img_as_bmp(first_tar_img, 0, second_src_img)
    compress_with_quality(quality=QF2, outfile=second_tar_img, img=second_src_img, is_photoshop=False)

    res = find_second_latest_qtable('.', second_tar_img, length=length)

    dct_arr = res
    dct_arr.insert(0, img)

    res_df = pd.concat([res_df, pd.DataFrame([dct_arr], columns=res_df.columns)], ignore_index=True)

    # Clear the images
    os.remove(first_tar_img)
    os.remove(second_src_img)
    os.remove(second_tar_img)

    return res_df

def compress_twice_using_custom(QF1, QF2, img_dir, img, res_df):
    pname = mp.current_process().name
    first_src_img = os.path.join(img_dir, img)
    first_tar_img = pname + '.jpg'
    second_src_img = pname + '2.bmp'
    second_tar_img = pname + '2.jpg'

    compress_with_custom(quality=QF1, outfile=first_tar_img, img=first_src_img)
    ref, _ = get_qtable_ctable_from_jpg(first_tar_img)

    # Find the first length elements in zigzag order
    length = 15

    # Write the reference table first, since the table can vary
    temp = get_zigzag_order(lst=ref, length=length)
    temp = temp.tolist()
    temp.insert(0, 'Reference table')
    res_df = pd.concat([res_df, pd.DataFrame([temp], columns=res_df.columns)], ignore_index=True)

    save_img_as_bmp(first_tar_img, 0, second_src_img)
    compress_with_custom(quality=QF2, outfile=second_tar_img, img=second_src_img)

    res = find_second_latest_qtable('.', second_tar_img, length=length)

    dct_arr = res
    dct_arr.insert(0, img)

    res_df = pd.concat([res_df, pd.DataFrame([dct_arr], columns=res_df.columns)], ignore_index=True)

    # Clear the images
    os.remove(first_tar_img)
    os.remove(second_src_img)
    os.remove(second_tar_img)

    return res_df

# download images in df where index in [start, end)
def download_img_batch(output_dir, df, start, end, crop_width, crop_height, idxs=None):
    is_custom = idxs is not None

    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    if idxs is None:
        idxs = range(len(df))

    length = (end - start) // 4
    threads = []

    s = start
    while s < end:
        e = min(s + length, end)
        crop_width = -1 if is_custom else crop_width
        crop_height = -1 if is_custom else crop_height
        t = threading.Thread(target=download_img_batch_thread,
                             args=(output_dir, df, s, e, idxs, crop_width, crop_height))
        t.start()
        threads.append(t)
        s += length
    
    for t in threads:
        t.join()

def download_img_batch_thread(output_dir, df, start, end, idxs, crop_width, crop_height):
    idxs_subset = idxs[start:end]

    for idx in idxs_subset:
        img = df.iloc[idx]['File']
        img_tiff = os.path.join(output_dir, img + '.TIF')
        img_bmp = os.path.join(output_dir, img + '.bmp')

        if os.path.exists(os.path.join(output_dir, img_bmp)):
            continue

        url = df.iloc[idx]['TIFF']

        subprocess.run(f'wget {url} -P {output_dir}', 
            stdout=subprocess.DEVNULL,
            stderr=subprocess.STDOUT)

        crop_img_into_bmp(img_tiff, img_bmp, crop_width, crop_height)
        os.remove(img_tiff)

def clear_img_batch(dir):
    for f in os.listdir(dir):
        os.remove(os.path.join(dir, f))

def process_img_batch(dir, qf1, qf2, csv_dir, is_photoshop, is_custom=False):
    columns = ['File'] + ['DCT_{i}'.format(i=i) for i in range(1, 16)]
    curr_df = pd.DataFrame(columns=columns)
    
    csv = mp.current_process().name + '.csv'
    csv_path = os.path.join(csv_dir, csv)
    
    prev_df = pd.DataFrame(columns=columns)
    has_prev = os.path.exists(csv_path)
    
    if has_prev:
        prev_df = pd.read_csv(csv_path)
    
    for f in os.listdir(dir):
        if not is_custom:
            curr_df = compress_twice_using_qf(qf1, qf2, dir, f, curr_df, has_prev, is_photoshop)
        else:
            curr_df = compress_twice_using_custom(qf1, qf2, dir, f, curr_df)
    
    res_df = pd.concat([prev_df, curr_df])
    res_df.to_csv(csv_path, index=False)    

def set_global_n(max_n):
    global n
    n = max_n

if __name__ == '__main__':
    if len(sys.argv) < 9:
        print('Usage: main.py <csv_file> <start> <end> <step> <result_dir> <img_dir_name> <crop_width> <crop_height> <is_photoshop> <max_n>')
        exit()

    csv_file, start, end, step, result_dir, img_dir_name, crop_width, crop_height, is_photoshop, max_n = sys.argv[1:]
    start, end, step, crop_width, crop_height = int(start), int(end), int(step), int(crop_width), int(crop_height)
    is_photoshop = is_photoshop.upper() == 'TRUE'
    set_global_n(int(max_n))

    # For photoshop
    df = pd.read_csv(csv_file)

    # Process 50 images in a batch
    img_dir = os.path.join('Images', img_dir_name)
    csv_dir = os.path.join('Result', result_dir)

    if not os.path.exists(csv_dir):
        os.makedirs(csv_dir)

    if not os.path.exists(img_dir):
        os.makedirs(img_dir)
    
    while start < end:
        end = min(start + step, len(df))
        download_img_batch(img_dir, df, start, end, crop_width, crop_height)

        processes = []
        qf1s = range(1, 8) if is_photoshop else [60, 65, 70, 75, 80, 85, 90, 95] 
        qf2s = [80, 90]

        for qf1 in qf1s:
            for qf2 in qf2s:
                p = mp.Process(target=process_img_batch, 
                               name=f'{qf1}_{qf2}',
                               args=(img_dir, qf1, qf2, csv_dir, is_photoshop))
                p.start()
                processes.append(p)

        for p in processes:
            p.join()

        print(f'Finish processing for images in range [{start}, {end})')
        # Clear the downloaded images to save space
        clear_img_batch(img_dir)

        start = end


    # df = pd.read_csv('RAISE_6k.csv')

    # # Process 50 images in a batch
    # step = 20
    # total = 500
    # img_dir = 'images'
    # csv_dir = os.path.join('Result', '23_10_2022')
    # choices_file = os.path.join(csv_dir, 'choices.txt')

    # if not os.path.exists(csv_dir):
    #     os.makedirs(csv_dir)
    
    # choices = []
    # if not os.path.exists(choices_file):
    #     choices = random.sample(range(len(df)), k=total)

    #     with open(choices_file, 'w') as f:
    #         for val in choices:
    #             f.write(f'{val} ')
    # else:
    #     with open(choices_file, 'r') as f:
    #         line = f.readline()
    #         choices = line.split()
    #         choices = list(map(lambda x : int(x), choices))
    
    # start = 0
    # while start < total:
    #     end = min(start + step, len(df))
    #     download_img_batch(img_dir, df, start, end, choices)

    #     processes = []
    #     qf1s = ['LOW', 'MID', 'HIGH']
    #     qf2s = ['LOW', 'MID', 'HIGH']

    #     for qf1 in qf1s:
    #         for qf2 in qf2s:
    #             p = mp.Process(target=process_img_batch, 
    #                            name=f'{qf1}_{qf2}',
    #                            args=(img_dir, qf1, qf2, csv_dir, True))
    #             p.start()
    #             processes.append(p)

    #     for p in processes:
    #         p.join()

    #     print(f'Finish processing for images in range [{start}, {end})')
    #     # Clear the downloaded images to save space
    #     clear_img_batch(img_dir)

    #     start = end

