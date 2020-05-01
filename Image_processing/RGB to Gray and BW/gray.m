%xximage4.m : Write a program to convert any RGB image to (i) Gray Scale
%and (ii) B/W image file
clc;
close all;
clear;
file1=input('\nEnter Input Image File Name = ','s');
file2=input('\nEnter Gray Scale Image File Name = ','s');
file3=input('\nEnter B/W Image File Name = ','s');
x=imread(file1);
[r,c,d]=size(x);
%To convert RGB to Gray Scale
g(1:r,1:c,1)=.2989*x(1:r,1:c,1)+.587*x(1:r,1:c,2)+.114*x(1:r,1:c,3);
imwrite(g,file2); %Saving gray scale image in file2
%To convert Gray scale image to B/W Image
%for i=1:r
 %   for j=1:c
%        if g(i,j,1)>=127
 %           b(i,j,1)=255;
%        else
%            b(i,j,1)=0;
%        end
%    end
%end
g((g<=127)) = 0;
g((g>127)) = 255;
b = im2bw(x);
imwrite(b,file3);

%y = 0;
%End of program