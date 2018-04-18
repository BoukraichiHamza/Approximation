function Y = subdivise_fermee(X,n,i)
Ycour = X;

%% Boucle de subdivision
for k = 1:i
Ycour = repelem(Ycour,2);
    %% Boucle de calcul des milieux
    for j = 1:n
        m = size(Ycour,2);
        % Sauvegarde du premier élément
        Yfirst = Ycour(1);
        Xcour = zeros(1,m);
        % Calcul des milieux
        for i = 1:m-1
            Xcour(i) = (Ycour(i) + Ycour(i+1)) / 2;
        end
        % Calcul du milieu du dernier et premier point
        Xcour(m) = (Ycour(m) + Yfirst) /2;
        Ycour = Xcour;
    end
end
%% Fermeture de la courbe
Y = [Ycour Ycour(1)];
end