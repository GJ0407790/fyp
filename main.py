# This is just a copy from main.ipynb for batch processing

# import relevant libraries
import os, sys, subprocess
from tqdm.autonotebook import tqdm
import jpegio as jio
import numpy as np
from PIL import Image
import pandas as pd

# Step 1: Initialize hyperparameter for k and n
sqrt_k = 8
k = 64
n = 70

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

# Generates the histogram fro coefficient arrays
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
    blocks = ctable.reshape(num_h, sqrt_k, num_w, sqrt_k).transpose(0, 2, 1, 3)
    # print("Shape of blocks: " + str(blocks.shape) + ", type: " + str(blocks.dtype))

    # counts[i] store the value from the i-th position in 8x8 block
    counts = np.ndarray((k, num_blocks), dtype=np.int32)

    for r in range(num_h):
        for c in range(num_w):
            for br in range(sqrt_k):
                for bc in range(sqrt_k):
                    counts[zigzag[br][bc], r * num_w + c] = blocks[r, c, br, bc]
    
    rmin = counts.min()
    rmax = counts.max()
    # print("Shape of counts: " + str(counts.shape))
    # print("The range of values is [{rmin}, {rmax}]".format(rmin=rmin, rmax=rmax))

    # the range of the value in histogram lies within [rmin, rmax]
    rlen = rmax - rmin + 1

    histograms = np.zeros((k, rlen), dtype=np.int32)
    for i in range(k):
        for j in range(counts.shape[1]):
            # shift by rmin
            histograms[i][counts[i][j] - rmin] += 1

    return histograms, rmin

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

# with Image.open("temp.bmp") as im_test:
#     print("The size of image is ({h}, {w})".format(h=im_test.height, w=im_test.width))

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
def compress_with_quality(quality, outfile, img):
    cjpeg = os.path.join('libjpeg-turbo', 'cjpeg')
    subprocess.run(cjpeg + ' -quality {quality} -outfile {outfile} {img}'.format(quality=quality, outfile=outfile, img=img))

# Generate histograms for constant matrix with all elements equal i
def generate_hist_from_const_qtable(i):
    write_const_mat(i)

    const_qtable_file='qtable.txt'
    latest_qtable_file='qm.txt'
    first_compress_source='temp.bmp'
    first_compress_target='temp.jpg'
    second_compress_source='res.bmp'
    second_compress_target='res.jpg'

    # compress using the constant matrix
    compress_with_qtable(qtable_file=const_qtable_file, outfile=first_compress_target, img=first_compress_source)
    
    # save the temp.jpg as res.bmp to compress it again
    save_img_as_bmp(img_path=first_compress_target, crop_len=0, output_img=second_compress_source)

    # finally compress res.bmp to res.jpg using qm
    compress_with_qtable(qtable_file=latest_qtable_file, outfile=second_compress_target, img=second_compress_source)

    # get the coefficient array in res.jpg
    curr_qtable, curr_ctable = get_qtable_ctable_from_jpg(second_compress_target)

    return generate_hist_from_coeff(curr_ctable)

# Generate a list of histograms for different constant matrix 
# Outputs (histograms, mins) where histograms is the list of histogram and mins is the list of minimum value in each histogram
def generate_all_hist(length):
    histograms = []
    mins = []

    for i in range(1, length + 1):
        hist, rmin = generate_hist_from_const_qtable(i)
        histograms.append(hist)
        mins.append(rmin)
        # print("Finish process for x={i}".format(i=i))
    
    return histograms, mins

# Calculate the chi square distance between two histograms
def compare_two_histogram(hist1, rmin1, hist2, rmin2):
    rmax1, rmax2 = rmin1 + len(hist1) - 1, rmin2 + len(hist2) - 1

    # can split into three segments: 
    # 1: (min(rmin1, rmin2), max(rmin1, rmin2)) --> (l, ml)
    # 2: (max(rmin1, rmin2), min(rmax1, rmax2)) --> (ml, mr)
    # 3: (min(rmax1, rmax2), max(rmax1, rmax2)) --> (mr, r)
    l, r = min(rmin1, rmin2), max(rmax1, rmax2)

    chi_dist = 0

    for i in range(l, r + 1):
        # we use x to represent hist1, y to represent hist2
        # i not in [rmin1, rmax1] means it is out of bound, let it be 0
        x = 0 if i < rmin1 or i > rmax1 else hist1[i - rmin1]
        y = 0 if i < rmin2 or i > rmax2 else hist2[i - rmin2]
        
        if x + y == 0:
            continue

        chi_dist += ((x - y) ** 2) / (x + y)

    return chi_dist

# pos in range [0, 63]
def find_val_for_pos(i, D_jref, Dmin, hists, mins):
    chi_dists = []

    # hist = hists[idx], min = mins[idx]
    for idx, hist in enumerate(hists):
        chi_dists.append((idx + 1, compare_two_histogram(D_jref, Dmin, hist[i], mins[idx])))

    # sort chi_dists according to chi_dist computed
    chi_dists.sort(key=lambda x: x[1])

    return chi_dists[0][0]

# Find the second previous quantization table (the essence of the algorithm)
# img must be a jpeg extension (since we are extracting the quantization table)
def find_second_latest_qtable(dir, img, length):
    img_path = os.path.join(dir, img)
    
    # Get qtable and ctable from the image
    qtable, ctable = get_qtable_ctable_from_jpg(img_path)

    # Write the latest quantization table into qm.txt once for this current image
    write_latest_qtable(qtable, 'qm.txt')
    
    # Save cropped image as temp.bmp
    save_img_as_bmp(img_path, crop_len=4, output_img='temp.bmp')

    # Calculate the histogram for the reference histogram D_ref
    # The histogram for each constant qtable after compressing twice
    # Each histogram has length 64 that stores distribution of pos i in histogram[i]
    D_ref, Dmin = generate_hist_from_coeff(ctable=ctable)
    hists, mins = generate_all_hist(length)
    
    target_qtable = [1] * length

    for i in range(length):
        target_qtable[i] = find_val_for_pos(i, D_ref[i], Dmin, hists, mins)
    
    # print(target_qtable)
    # restore the target_qtable into 8x8 matrix
    res = [[1 for i in range(sqrt_k)] for j in range(sqrt_k)]

    for r in range(sqrt_k):
        for c in range(sqrt_k):
            # print(str(zigzag[r][c]) + " " + str(target_qtable[zigzag[r][c]]))
            if zigzag[r][c] < length:
                res[r][c] = target_qtable[zigzag[r][c]]
    
    # write_latest_qtable(res, 'ans.txt')

    return res

def get_zigzag_order(lst, length):
    temp = np.zeros((length), dtype=np.int32)

    for r in range(sqrt_k):
        for c in range(sqrt_k):
            if zigzag[r][c] < length:
                temp[zigzag[r][c]] = lst[r][c]

    return temp

def compare_two_table_zigzag(ref, res, length):
    dct_arr = get_zigzag_order(res, length)
    return dct_arr

# Pass in crop_width < 0 if want crop_width to be the same as img_width
# Similarly for crop_height
def crop_img_into_bmp(img, crop_width=-1, crop_height=-1):
    with Image.open(img) as im:
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
        save_img_as_bmp_box(img, left, upper, right, lower, 'source.bmp')
    return True

def compress_twice_using_qf(QF1, QF2, img, res_df):
    compress_with_quality(quality=QF1, outfile='source.jpg', img='source.bmp')
    
    ref, _ = get_qtable_ctable_from_jpg('source.jpg')

    # Find the first length elements in zigzag order
    length = 15

    if len(res_df) == 0:
        temp = get_zigzag_order(lst=ref, length=length)
        temp = temp.tolist()

        # Assign the n to be the max of the first 15 elements of the reference table
        global n
        n = max(temp)

        temp.insert(0, 'Reference table')
        res_df = pd.concat([res_df, pd.DataFrame([temp], columns=res_df.columns)], ignore_index=True)

    save_img_as_bmp('source.jpg', 0, 'source.bmp')
    compress_with_quality(quality=QF2, outfile='source.jpg', img='source.bmp')

    res = find_second_latest_qtable('.', 'source.jpg', length=length)

    dct_arr = get_zigzag_order(lst=res, length=length)
    dct_arr = dct_arr.tolist()
    dct_arr.insert(0, img)
    
    res_df = pd.concat([res_df, pd.DataFrame([dct_arr], columns=res_df.columns)], ignore_index=True)
    return res_df

def compress_twice_result(csv_file):
    df = pd.read_csv(csv_file)
    file_tiff = df[['File', 'TIFF']].head(2)

    Q1s = [85]
    Q2s = [90]

    for QF2 in Q2s:
        for QF1 in Q1s:
            # Write the res_df into csv
            columns = ['File'] + ['DCT_{i}'.format(i=i) for i in range(1, 16)]
            res_df = pd.DataFrame(columns=columns)

            print('Evaluating result for QF1={QF1} and QF2={QF2}:'.format(QF1=QF1, QF2=QF2))
            
            for index, row in tqdm(file_tiff.iterrows(), total=file_tiff.shape[0]):
                img = row['File'] + '.TIF'
                url = row['TIFF']

                # Download the image
                subprocess.run('wget {url}'.format(url=url))

                if not crop_img_into_bmp(img, 64, 64):
                    os.remove(img)
                    continue

                
                res_df = compress_twice_using_qf(QF1, QF2, img, res_df)
    
                # Remove the downloaded image to save storage
                os.remove(img)
                
                # Write to csv file every 50 iterations
                if (index + 1) % 10 == 0:
                    date = '6_10_2022'
                    dir_path = os.path.join('Result', date)

                    if not os.path.exists(dir_path):
                        os.makedirs(dir_path)

                    res_csv = 'test_QF1{qf1}_QF2{qf2}.csv'.format(qf1=QF1, qf2=QF2)
                    res_df.to_csv(os.path.join('Result', '6_10_2022', res_csv), index=False)

if __name__ == '__main__':
    compress_twice_result('RAISE_1k.csv')
