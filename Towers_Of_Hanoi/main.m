%q44as2.m : Write a program to implement towers of hanoi problem

clc;
close all;
clear;
global n;
nd=input('\nEnter number of disks to be moved=');
n=0;
hanoi(nd,1,3,2);
fprintf('\nTotal number of operations perormed=%d\n',n);
%end of Towers of Hanoi program