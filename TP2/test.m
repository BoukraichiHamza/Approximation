[X,Y] = saisi_points();
figure(1)
title('Casteljau')
plot(X,Y)
hold on
fplot(@(t) Casteljau(X,t),@(t) Casteljau(Y,t),[0,1]);


figure(2)
subplot(2,2,1)
plot(X,Y)
title('Casteljau subdivision 1')
hold on
Sx = CasteljauSubdivision(X,1);
Sy = CasteljauSubdivision(Y,1);
plot(Sx,Sy)
hold on
fplot(@(t) Casteljau(Sx',t),@(t) Casteljau(Sy',t),[0,1]);


 subplot(2,2,2)
plot(X,Y)
title('Casteljau subdivision 2')
hold on
Sx2 = CasteljauSubdivision(X,2);
Sy2 = CasteljauSubdivision(Y,2);
plot(Sx2,Sy2)
hold on
fplot(@(t) Casteljau(Sx2',t),@(t) Casteljau(Sy2',t),[0,1]);


subplot(2,2,3)
plot(X,Y)
title('Casteljau subdivision 3')
hold on
Sx3 = CasteljauSubdivision(X,3);
Sy3 = CasteljauSubdivision(Y,3);
plot(Sx3,Sy3)
hold on
fplot(@(t) Casteljau(Sx3',t),@(t) Casteljau(Sy3',t),[0,1]);


subplot(2,2,4)
plot(X,Y)
title('Casteljau subdivision 4')
hold on
Sx4 = CasteljauSubdivision(X,4);
Sy4 = CasteljauSubdivision(Y,4);
plot(Sx4,Sy4)
hold on
fplot(@(t) Casteljau(Sx4',t),@(t) Casteljau(Sy4',t),[0,1]);


figure(3)
title('Hodographe Casteljau')
hold on
 n = size(X,2);
 Xaux = (n-1)*(X(2:n)-X(1:n-1));
 Yaux = (n-1)*(Y(2:n)-Y(1:n-1));
 plot(Xaux,Yaux);
 hold on
fplot(@(t) CasteljauHodographe(X,t),@(t) CasteljauHodographe(Y,t),[0,1]);


figure(4)
title('Fonctions de Bernstein')
subplot(2,2,1)
title('n = 3')
hold on
for i = 0:3
   fplot(@(t) Bernstein(3,i,t),[0,1]);
   hold on
end


subplot(2,2,2)
title('n = 5')
hold on
for i = 0:5
   fplot(@(t) Bernstein(5,i,t),[0,1]);
   hold on
end



subplot(2,2,3)
title('n = 8')
hold on
for i = 0:8
   fplot(@(t) Bernstein(8,i,t),[0,1]);
   hold on
end


subplot(2,2,4)
title('n = 10')
hold on
for i = 0:10
   fplot(@(t) Bernstein(10,i,t),[0,1]);
   hold on
end






