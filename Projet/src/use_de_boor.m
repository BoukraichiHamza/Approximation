%% Param�tres
% X : points de controle
% p : degr�e
% fermee : booleen indiquant si on calcul des surfaces ferm�es


function V = use_de_boor(X,k,fermee)
if fermee
    Y = [X(end-k:end) X  X(1:k)];
else
    Y = X;
end
n = size(Y,2);
u = size(Y,2);

%% Cr�ation du vecteur de noeuds
m = n + k+1;
if fermee
    Tnaux = 1:(m-2*k-1);
    Tnaux = 1/(m-2*k)*Tnaux;
else
    Tnaux = 1:m-2*k-2;
    Tnaux = 1/(m-2*k-1)*Tnaux;
end
Tn = [zeros(1,k+1) Tnaux ones(1,k+1)];
%% G�n�ration du vecteur de paramétrisation réguliere

n = 10*n;
Taux = 0:(1/n):1;
if fermee
    t0 = u*(k)/n;
    tf = u*(u-k)/n;
    T = t0:1/n:tf;
else
    T = Taux;
end
%% Calcul du vecteur resultat par appel de DeBoor
n = size(T,2);
V = zeros(n,1);

for i = 1:n
    V(i) =  deBoor(T(i),Y,Tn,k);
end
end
