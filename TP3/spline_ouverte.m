function [U,V] = spline_ouverte(X,Y,n,i)
    U = subdivise_open(X,n,i);
    V = subdivise_open(Y,n,i);
    
    U = [ X(1) ,U , X(end)];
    V = [ Y(1) ,V , Y(end)];
end