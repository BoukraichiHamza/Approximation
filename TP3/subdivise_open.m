function Y = subdivise_open(X,n,i)
Ycour = X;
for k = 1:i
Ycour = repelem(Ycour,2);
    for j = 1:n
        m = size(Ycour,2);
        Xcour = zeros(1,m-1);
        for i = 1:m-1
            Xcour(i) = (Ycour(i) + Ycour(i+1)) / 2;
        end
        Ycour = Xcour;
    end
end
Y = Ycour;