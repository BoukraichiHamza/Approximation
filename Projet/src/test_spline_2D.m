%% Test de spline en 2D
clear all
close all
X = [ 0 , 0.25 , 0.5 , 0.625, 0.75 , 0.4];
Y = [ 0 , 0.25 , 0.625 , 0.675 , 0.22 , 0.2];
figure(1)
plot(X,Y)
hold on
Vx = subdivise_fermee(X,4,4);
Vy = subdivise_fermee(Y,4,4);
plot(Vx,Vy);

figure(2)
X = [0.0795 0.2776 0.4067 0.5979 0.7131 0.8744 0.9758];
Y = [0.2085 0.8090 0.0510 0.8703 0.0335 0.8673 0.0860];
plot(X,Y);
hold on
Vx = subdivise_fermee(X,4,2);
Vy = subdivise_fermee(Y,4,2);
plot(Vx,Vy);


figure(3)
X = [0.0933    0.2131    0.4620    0.6118    0.8998    0.6025];
Y = [0.8207    0.3630    0.4942    0.1560    0.7187    0.6983];
plot(X,Y);
hold on
Vx = subdivise_fermee(X,4,3);
Vy = subdivise_fermee(Y,4,3);
plot(Vx,Vy);

figure(4)
X =  [0.1141    0.1210    0.1901    0.2085    0.3099    0.2661    0.3652    0.4228    0.4597    0.5265    0.6002    0.6187    0.6786 0.7615    0.6624    0.7615    0.8537    0.9021    0.9482];
Y =  [0.3921    0.2318    0.3192    0.2201    0.3134    0.2114    0.2085    0.2289    0.3309    0.2697    0.3192    0.2055    0.3076 0.3047    0.1472    0.1531    0.1735    0.2784    0.1793];
plot(X,Y);
hold on
Vx = subdivise_fermee(X,4,3);
Vy = subdivise_fermee(Y,4,3);
plot(Vx,Vy);