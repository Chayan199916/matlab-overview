%function ccos=cosine(x) : Function to calculate cos(x)
function ccos=cosine(x)
xrad = x*pi/180;
ccos=1;
pcos=0;
eps=abs(ccos-pcos);
n=2;
sf=-1;
  while eps>1e-16
    pcos=ccos;
    fact=1;
    for i=1:n
        fact = fact*i;
    end
    ccos = ccos+sf*xrad^n/fact;
    eps=abs(ccos-pcos);
    n=n+2;
    sf=-sf;
  end
end