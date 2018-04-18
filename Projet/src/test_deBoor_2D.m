%% Test de Deboor en 2D
clear all
close all
X = [ 0 , 0.25 , 0.5 , 0.625, 0.75 , 0.4];
Y = [ 0 , 0.25 , 0.625 , 0.675 , 0.22 , 0.2];
figure(1)
plot(X,Y)
hold on
Vx = use_de_boor(X,2,false);
Vy = use_de_boor(Y,2,false);
plot(Vx,Vy);

figure(2)
X = [0.0795 0.2776 0.4067 0.5979 0.7131 0.8744 0.9758];
Y = [0.2085 0.8090 0.0510 0.8703 0.0335 0.8673 0.0860];
plot(X,Y);
hold on
Vx = use_de_boor(X,2,false);
Vy = use_de_boor(Y,2,false);
plot(Vx,Vy);


figure(3)
X = [0.0933    0.2131    0.4620    0.6118    0.8998    0.6025];
Y = [0.8207    0.3630    0.4942    0.1560    0.7187    0.6983];
plot(X,Y);
hold on
Vx = use_de_boor(X,2,false);
Vy = use_de_boor(Y,2,false);
plot(Vx,Vy);

