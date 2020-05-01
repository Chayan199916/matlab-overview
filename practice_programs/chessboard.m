function a = chessboard(n)
a = zeros(n);
a(1:32, 1:32) = 255;
a(33:64, 33:64) = 255;
end