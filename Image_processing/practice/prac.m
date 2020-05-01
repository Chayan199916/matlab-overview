clc;
clear;
close all;
file1 = input('Enter input image file name: ', 's');
im = imread(file1);
[r, c, d] = size(im);
y(1:r,1:c,1)=.2989*im(1:r,1:c,1)+.587*im(1:r,1:c,2)+.114*im(1:r,1:c,3);
imwrite(y, 'gray.jpg');
b = y;
b(b >= 127) = 255;
b(b < 127) = 0;
imwrite(b, 'bnw.jpg');
i = im;
i(i == 255) = 0;
i(i ~= 255) = 255;
imwrite(i, 'inverse.jpg');
r1(1:r, 1:c, 1) = im(1:r, 1:c, 1);
r1(1:r, 1:c, 2:3) = 0;
imwrite(r1, 'demo1.jpg');