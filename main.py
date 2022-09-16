import os
import jpegio as jio
import numpy as np

# Return the previous quantization table of the given image
# params:
# dir: relative path directory to the img
# img: name of the image to calculate the previous quantization table 
def get_prev_qtable(dir, img):
    # Step 1: Initialize hyperparameter for k and n
    sqrt_k = 8
    k = 64
    n = 100

    img_path = os.path.join(dir, img)
    image = jio.read(img_path)
    print("Opened {img_path}, with size {height}x{width}".format(
        img_path=img_path, height=image.image_height, width=image.image_width))
    
    # Step 2: Get the quantization table
    qtable = image.quant_tables[0]
    ctable = image.coef_arrays[0]

    print("Quantization table for Y componenet:")
    print(qtable)

    print("Shape of coefficient table: " + str(ctable.shape))
    # first_block = ctable[:8, :8]
    # print(first_block)

    # Split into array of 8x8 blocks
    ctable_h, ctable_w = ctable.shape[:2]
    num_h, num_w = ctable_h // sqrt_k, ctable_w // sqrt_k 
    num_blocks = (num_h) * (num_w)
    
    # transpose is arrange the blocks into 2d matrix of blocks
    blocks = ctable.reshape(num_h, sqrt_k, num_w, sqrt_k).transpose(0, 2, 1, 3)
    print("Shape of blocks: " + str(blocks.shape) + ", type: " + str(blocks.dtype))
    print(blocks[0, 0])

    # Step 3a: Multiply (element-wise) quantization table with the blocks
    for r in range(num_h):
        for c in range(num_w):
            blocks[r, c] = blocks[r, c] * qtable

    # print(blocks[0, 0]) 
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

    counts = np.ndarray((k, num_blocks), dtype=np.int32)
    
    for r in range(num_h):
        for c in range(num_w):
            for br in range(sqrt_k):
                for bc in range(sqrt_k):
                    counts[zigzag[br][bc], r * num_w + c] = blocks[r, c, br, bc]
    
    print("Shape of counts: " + str(counts.shape))
    print(counts[0])

    histograms = []
    for i in range(k):
        histograms.append(np.histogram(counts[i], bins='auto'))

    print("Length of histograms: " + str(len(histograms)))
    print(histograms[0])

    

if __name__ == '__main__':
    res = get_prev_qtable("images", "test1.jpg")
