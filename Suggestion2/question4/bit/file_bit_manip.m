%file bit complement

clc;
clear all;
close all;
file1 = input('enter name of input file : ','s');
fp1 = fopen(file1,'r');
a = fread(fp1);
bin = dec2bin(uint8(a),8);
bincpy = bin;
[len, bitlen] = size(bin);
c=1;
for i=1:len
    if is_prime(c) == 1
        comp = cmpl(bin(c,1:8));
        rev = comp(8:-1:1);
        comprev = cmpl(rev);
        final = comprev(8:-1:1);
        fprintf('original : %s comp:%s rev:%s comprev:%s final:%s\n',bin(c,1:8),comp,rev,comprev,final);
    end
    c=c+1;
end
fprintf('%d percent change\n',bincpy - bin);




% to get in integer format : bin = uint8(dec2bin(uint8(a),8) - '0')
