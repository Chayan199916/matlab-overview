%function s=sum5(n) : Function to calculate s=1-2+3-4... to n
function s=sum5(n)
s=0;
f=1;
  for i=1:n
    s=s+f*i;
    f=f*-1;
  end
end