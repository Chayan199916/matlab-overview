%prob_2.m : Write a program to extract words from any file.
%sort the words and display sorted words and also number of words
%extracted from file
clc;
close all;
clear all;
file1=input('\nEnter Input file name=','s');
file2=input('Enter Output file name=','s');
fp1=fopen(file1,'r');
fp2=fopen(file2,'w');
fseek(fp1,0,1); % To go end of file
n=ftell(fp1);
fseek(fp1,0,-1); % To go 1st byte of the file
% To extract all words from file
%fprintf('\nLength of file=%d\n',n);
nw=0;
flag=1;
j=0;
for i=1:n
        ch=fscanf(fp1,'%c',1);
        y1=ch;
    y2=upper(y1);
    if y2>='A' && y2<='Z'
        if flag==1
            nw=nw+1;
            flag=0;
        end
        %fprintf('%c',ch);
        j=j+1;
        word(nw,j)=ch;
    elseif flag==0
        %fprintf('\n');
        flag=1;
        j=0;               
    end
end
%fprintf('\nNumber of words=%d\n',nw);
fprintf('%s, ',word(nw,:)); 
for i=1:nw-1
    fprintf('%s.',word(i));
end
fprintf('\n');