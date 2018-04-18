function [U,V,W] = surf_spline(g,n,i)
    U = spline_2dir(g(:,:,1),n,i);
    V = spline_2dir(g(:,:,2),n,i);
    W = spline_2dir(g(:,:,3),n,i);
end