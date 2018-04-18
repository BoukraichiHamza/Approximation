function S = CasteljauSubdivision(X,i)
    if i==1
        S = CasteljauSub2(X,0.5);
    else
        Saux = CasteljauSub2(X,0.5);
        n = size(X,2);
        Saux1 = Saux(1:n)';
        Saux2 = Saux(n+1:2*n)';
        
        S = [CasteljauSubdivision(Saux1,i-1) ; CasteljauSubdivision(Saux2,i-1) ];
    end
end