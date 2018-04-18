function S = CasteljauHodographe(X,T)
n = size(X,2);
m = size(T,2);
Xaux = (n-1)*(X(2:n)-X(1:n-1));
S=zeros(1,m);
for i=1:m
    S(i) = Casteljau(Xaux,T(i));
end
end