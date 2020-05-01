function ccos = prac_cos(x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
xrad = x * pi / 180;
pcos = 0;
ccos = 1;
eps = abs(ccos - pcos);
n = 2;
sf = -1;
while eps > 1e-16
    pcos = ccos;
    fact = 1;
    for i = 1:n
        fact = fact * i;
    end
    ccos = ccos + sf * xrad ^ n / fact;
    eps = abs(ccos - pcos);
    n = n + 2;
    sf = -sf;
end
end



