%q93as2.m : Write a program to remove all comment lines from any MATLAB
%program file

clc;
close all;
clear;
file1=input('\nEnter Input File Name=','s');
file2=input('Enter Output File Name=','s');
fp1=fopen(file1,'r');
fp2=fopen(file2,'w');
nc=0;
fseek(fp1,0,1); % To go to end of file
n=ftell(fp1);
fprintf('\nn=%d\n',n);
fseek(fp1,0,-1); % To go to beginning of the file
while ~feof(fp1)
    ch=fread(fp1,1);
    %fprintf('%c',char(ch));
    if  ch==39    
        while 1==1
            fprintf(fp2, '%c', char(ch));
            ch= fread(fp1, 1);
            if ch==39
                fprintf(fp2,'%c',char(ch));
                break;
            end
        end
    elseif char(ch)=='%'
        nc=nc+1;
        while 1==1
            ch=fread(fp1,1);
            if ch == 10
                break;
            end
            if ch == 13
                break;
            end
        end
    else
        fprintf(fp2,'%c',char(ch));
    end
end
fprintf('\nNumber of comment lines removed=%d\n',nc);
fclose('all');
%end of program