function Tore = tore()

Tore = zeros(4,4,3);
Tore(:,:,1) = [-1.5  0.0  1.5  0.0
			   -1.5  0.0  1.5  0.0
			   -0.5  0.0  0.5  0.0
			   -0.5  0.0  0.5  0.0];
Tore(:,:,2) = [ 0.0  1.5  0.0 -1.5
			    0.0  1.5  0.0 -1.5
			    0.0  0.5  0.0 -0.5
			    0.0  0.5  0.0 -0.5];
Tore(:,:,3) = [-0.5 -0.5 -0.5 -0.5
			    0.5  0.5  0.5  0.5
			    0.5  0.5  0.5  0.5
			   -0.5 -0.5 -0.5 -0.5];
           
           
end
