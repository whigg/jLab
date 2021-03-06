function[]=makefigs_dawson
%MAKEFIGS_DAWSON  Makes a sample figure for DAWSON.

dt=0.01;
t=(-10:dt:10)';
dk(:,1)=dawson(t);
dk(:,1)=dk(:,1)./maxmax(dk(:,1));
for k=1:5
    dk(:,k+1)=dawson(t,k);
    dk(:,k+1)=dk(:,k+1)./maxmax(dk(:,k+1));
end
figure,
plot(t,dk),title('The Dawson function and first 4 (normalized) derivatives'),ylim([-2 1.1])
