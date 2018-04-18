function Y = subdivise(X,n,i)
Ycour = X;
for k = 1:i
Ycour = repelem(Ycour,2);
    for j = 1:n
        m = size(Ycour,2);
        Yfirst = Ycour(1);
        Xcour = zeros(1,m);
        for i = 1:m-1
            Xcour(i) = (Ycour(i) + Ycour(i+1)) / 2;
        end
        Xcour(m) = (Ycour(m) + Yfirst) /2;
        Ycour = Xcour;
    end
end
Y = Ycour;