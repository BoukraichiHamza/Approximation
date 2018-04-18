function [U,V,W] = surf_deboor(g,n,fermee)
    U = surf_deboor_aux(g(:,:,1),n,fermee);
    V = surf_deboor_aux(g(:,:,2),n,fermee);
    W = surf_deboor_aux(g(:,:,3),n,fermee);
end