clc;
clear;
close all;
for i = 0:5:90
y1 = prac_sine(i);
y2 = prac_cos(i);
y3 = prac_tan(i);
fprintf('\nsin(%d): %5.1f\t\tcos(%d): %5.1f\t\ttan(%d):%12.1f\n',i, y1, i, y2, i, y3);
end