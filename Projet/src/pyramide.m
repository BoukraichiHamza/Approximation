function Grille = pyramide()
    x = linspace(-8,8,10);
    y = linspace(-8,8,10);
    [X,Y] = meshgrid(x,y);
    Z = (4-abs(X)) + (4-abs(Y));
    Z(Z < 0) = 0.1;
  Grille=zeros(size(X,1),size(X,2),3);
  Grille(:,:,1)=X;
  Grille(:,:,2)=Y;
  Grille(:,:,3)=Z;
end