function [ Data ] = ntrial(n,Data)
%ntrial for erp speller online

s1=size(Data,3);
M1=s1-mod(s1,n);
y1=zeros(3,1200,M1/n);
for k=1:M1/n
    for k2=1:n 
        y1(:,:,k)=y1(:,:,k)+Data(:,:,(k-1)*n+k2);
    end
end
y1=y1/n;
Result1=reshape(y1,3,1200,M1/n);
Data=Result1;

end

