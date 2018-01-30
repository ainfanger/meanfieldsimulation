n=100;
bvec = zeros(n,1);
truth = zeros(n,1);
p=.5;
bvec(1)= p^n;
truth(1)=bvec(1);
for i = 2:length(bvec)
   bvec(i) = (bvec(i-1)*(n-i+2)*p)/((i-1)*(1-p));
   truth(i)= nchoosek(n,i-1)*p^(i-1)*(1-p)^(n-i+1);
end
norm(bvec-truth)