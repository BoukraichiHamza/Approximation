function Y = surf_deboor_aux(X,k,fermee)

m = size(X,1);
%% Premiere étape, calcule des b-splines selon la direction des lignes
Xaux = [];
for j = 1:m
    Xaux = [ Xaux , use_de_boor(X(j,:),k,fermee)];
end
%% Deuxième étape, calcule des b-splines selon la direction des colonnes
m = size(Xaux,1);


Yaux = Xaux';
Y = [];
for j = 1:m
    Y = [ Y , use_de_boor(Yaux(:,j)',k,fermee)];
end
end