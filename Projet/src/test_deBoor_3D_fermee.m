%% Test de Deboor en 3D ferm�
figure(1)
subplot(1,2,1)
Tore = tore();
surf(Tore(:,:,1),Tore(:,:,2),Tore(:,:,3));
hold on
subplot(1,2,2)
[U,V,W] = surf_deboor(Tore,3,true);
surf(U,V,W)

figure(2)
subplot(1,2,1)
Grille = gen_grille();
surf(Grille(:,:,1),Grille(:,:,2),Grille(:,:,3));
hold on
subplot(1,2,2)
[U,V,W] = surf_deboor(Grille,2,true);
surf(U,V,W)