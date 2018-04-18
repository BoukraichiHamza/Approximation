%% Test splines en 3D
figure(1)
subplot(1,2,1)
Tore = tore();
surf(Tore(:,:,1),Tore(:,:,2),Tore(:,:,3));
hold on
subplot(1,2,2)
[U,V,W] = surf_spline(Tore,4,4);
surf(U,V,W)

figure(2)
subplot(1,2,1)
Grille = gen_grille();
surf(Grille(:,:,1),Grille(:,:,2),Grille(:,:,3));
hold on
subplot(1,2,2)
[U,V,W] = surf_spline(Grille,4,2);
surf(U,V,W)


figure(3)
subplot(1,2,1)
pyr = pyramide();
surf(pyr(:,:,1),pyr(:,:,2),pyr(:,:,3));
hold on
subplot(1,2,2)
[U,V,W] = surf_spline(pyr,4,2);
surf(U,V,W)