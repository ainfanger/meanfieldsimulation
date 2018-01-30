nobjects = 100;
ntime = 1000;
p_11 = .45;
p_12 = 1-p_11;
p_22 = .45;
p_21 = 1-p_22; 

dist = zeros(ntime,2);
dist(1,:)=[nobjects/2 nobjects/2];
ndist = dist/nobjects;

for i = 2:length(dist(:,1))
    dist(i,1) = binornd(dist(i-1,1),1-ndist(i-1,2)*p_12) + binornd(dist(i-1,2),ndist(i-1,1)*p_21);
    dist(i,2) = nobjects - dist(i,1);
    ndist(i,:) = dist(i,:)/nobjects;    
end
hold off
plot(dist(:,1))
hold on
plot(dist(:,2))