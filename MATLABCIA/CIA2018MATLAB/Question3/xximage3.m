%xximage3.m: Write a program to copy an image along y-axis n-time and
%x-axis m-times
clc;
close all;
clear all;
file1=input('\nEnter Input Image File name=','s');
file2=input('Enter Output Image File name=','s');
n=input('Enter how many times you want to copy along y-axis wise=');
m=input('Enter how many times you want to copy along x-axis wise=');
x=imread(file1);
[r,c,d]=size(x);
y=x;%To copy x to y
j=r;
k=j+r;
for i=2:n
    y(j+1:k,1:c,1:d)=x(1:r,1:c,1:d);
    j=j+r;
    k=k+r;
end
%To copy along x-axis-wise
j=c;
k=j+c;
for i=2:m
    fprintf('i=%d j=%d k=%d\n',i,j,k);
    y(1:n*r,j+1:k,1:d)=y(1:n*r,1:c,1:d);
    j=j+c;
    k=k+c;
end
imshow(y);
imwrite(y,file2);
%End of program