function csin = prac_sine(x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
xrad = x * pi / 180;
csin = xrad;
psin = 1;
sf = -1;
n = 3;
eps = abs(csin - psin);
while eps > 1e-16
    psin = csin;
    fact = 1;
    for k = 1:n
        fact = fact * k;
    end
    csin = csin + sf * xrad^n / fact;
    eps = abs(csin - psin);
    n = n + 2;
    sf = -sf;
end
end

