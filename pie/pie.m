%function cp=pie():Function to calculate value of pi using Taylor series
%expansion
% = 1 - 1 / (3 * 3) + 1 / (9 * 5) - 1 / (27 * 7) + .....
function cp=pie()
cp=1;
pp=0;
eps=abs(cp-pp);
n=3;
sf=-1;
p3=1;
while eps>1e-06
    pp=cp;
    p3=p3*3;
    cp=cp+sf/(p3*n);
    eps=abs(cp-pp);
    n=n+2;
    sf=-sf;
end
cp=sqrt(3)*2*cp;
end