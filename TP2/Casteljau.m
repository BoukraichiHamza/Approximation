function S = Casteljau(X,T)
m = size(T,2);
n = size(X,2);
S=zeros(1,m);
for i=1:m
    Xaux = CasteljauAux(X,T(i));
    S(i) = Xaux(n,1);
end
end