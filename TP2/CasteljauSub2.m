function S = CasteljauSub2(X,t)
n = size(X,2);
S = zeros(2*n,1);
Xaux = CasteljauAux(X,t);
for i = 1:n
    S(i) = Xaux(i,1);
    S(n+i) = Xaux(n-i+1,i);
end