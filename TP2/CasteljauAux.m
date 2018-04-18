function Xaux = CasteljauAux(X,t)
n = size(X,2);
Xaux = zeros(n,n);
Xaux(1,:) = X;
    for i = 2:n
        for j =1:n-i+1
            Xaux(i,j) = t*Xaux(i-1,j) + (1-t)*Xaux(i-1,j+1);
        end
    end
end