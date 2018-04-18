%% de Boor algorithme
% t : point où la b spline sera évalué
% X : vecteur des points de controle
% k : degré de la bsplines
% T : vecteur de noeuds

function s = deBoor(t,X,T,k)

n = size(X,2);


%% Recherche du rang j tq Tj <= t < Tj+1
j = 1;
m = size(T,1);
while (j<n) && ( t < T(j) || t >= T(j+1))
    j = j +1;
end
%% Calcul de la matrice des points intermediaires

% Initialisation de la premiere colonne

V = X;

% Calcul des itérés
for r = 0:k-1
    for i = j:-1:(j-k+r+1)
        alpha = (t - T(i)) / (T(i+k-r) - T(i));
          V(i) = alpha*V(i)+(1-alpha)*V(i-1); 
    end
end
%% Récupération de la solution
s = V(j);
end