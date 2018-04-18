function [U,V] = spline_fermee(X,Y,n,i)
    U = subdivise(X,n,i);
    V = subdivise(Y,n,i);
    
    U = [ U , U(1)];
    V = [ V , V(1)];
end