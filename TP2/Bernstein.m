function S = Bernstein(n,k,T)
m = size(T,2);
S = zeros(1,m);
for i = 1:m
    S(i) = nchoosek(n,k)*(1-T(i))^(n-k)*(T(i))^k;
end
end