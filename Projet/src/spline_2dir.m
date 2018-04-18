function Y = spline_2dir(X,n,i)

m = size(X,1);
k = size(X,2);
%% Premiere étape, calcule des splines selon la direction des lignes

Xaux = zeros(m, (2^i)*k+1);

for j = 1:m
    Xaux(j,:) = subdivise_fermee(X(j,:),n,i);
end

%% Deuxième étape, calcule des splines selon la direction des colonnes
m = size(Xaux,1);
k = size(Xaux,2);

Y = zeros((2^i)*m+1, k);

for j = 1:k
    Y(:,j) = subdivise_fermee(Xaux(:,j)',n,i);
end
end