%% Test de Deboor en 3D
figure(1)
subplot(1,2,1)
Tore = tore();
surf(Tore(:,:,1),Tore(:,:,2),Tore(:,:,3));
hold on
subplot(1,2,2)
[U,V,W] = surf_deboor(Tore,3,false);
surf(U,V,W)

figure(2)
subplot(1,2,1)
Grille = gen_grille();
surf(Grille(:,:,1),Grille(:,:,2),Grille(:,:,3));
hold on
subplot(1,2,2)
[U,V,W] = surf_deboor(Grille,2,false);
surf(U,V,W)

figure(3)
subplot(1,2,1)
Px = [0 0 0 0; 2 2 -2 -2; 2 2 -2 -2; 0 0 0 0];
Py = [0 0 0 0; 0 2 2 0; 0 2 2 0; 0 0 0 0];
Pz = [1 1 1 1; 1 1 1 1; -1 -1 -1 -1; -1 -1 -1 -1];
sphere = zeros(4,4,3);
sphere(:,:,1) =  Px;
sphere(:,:,2) =  Py;
sphere(:,:,3) =  Pz;
surf(Px,Py,Pz);
hold on
subplot(1,2,2)
[U,V,W] = surf_deboor(sphere,2,false);
 surf(U,V,W)
 
 figure(4)
subplot(1,2,1)
pyr = pyramide();
surf(pyr(:,:,1),pyr(:,:,2),pyr(:,:,3));
hold on
subplot(1,2,2)
[U,V,W] = surf_deboor(pyr,2,false);
surf(U,V,W)