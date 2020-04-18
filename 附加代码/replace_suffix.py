from glob import glob
import cv2
import os

imgs = glob('/Volumes/data/Projects/ProjectsCV/saliency/input/smaps/SALICON/sam/*.jpg')

for img in imgs:
    image = cv2.imread(img, 0)
    dst = img.replace('jpg', 'png')
    dst = dst.replace('sam', 'sam2')
    # print(dst)
    cv2.imwrite(filename=dst, img=image)