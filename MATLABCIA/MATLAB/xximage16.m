%xximage16.m: Write a program to zoom an image
clc;
close all;
clear all;
file1=input('\nEnter input image file name=','s');
file2=input('Enter output file name=','s');
x=imread(file1);
[r,c,d]=size(x);
z=x;
z(1:r,c+1:2*c,1:d)=x(1:r,c:-1:1,1:d); % copying along x-axis
z(r+1:2*r,1:2*c,1:d)=z(r:-1:1,1:2*c,1:d); % copying along y-axis
imshow(z);
imwrite(z,file2);
