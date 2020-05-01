im = imread('chess.jpg');
[r, c, d] = size(im);
y = im;
y(1:r, c+1:2*c, 1:d) = im(1:r, 1:c, 1:d);
[r, c, d] = size(y);
z = y;
z(r+1:2*r, 1:c, 1:d) = y(1:r, 1:c, 1:d);
[r, c, d] = size(z);
m = z;
for i = 1:3
    m(1:r, i*c + 1:(i+1)*c, 1:d) = z(1:r, 1:c, 1:d);
end
[r, c, d] = size(m);
n = m;
for i = 1:3
    n(i*r + 1:(i+1)*r, 1:c, 1:d) = m(1:r, 1:c, 1:d);
end
imshow(n);
imwrite(n, 'chess_total.jpg');