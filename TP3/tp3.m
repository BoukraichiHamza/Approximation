[X,Y] = saisi_points();
[U,V] = spline_fermee(X,Y,3,5);
plot(X,Y)
hold on
plot(U,V);