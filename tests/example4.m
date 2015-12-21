function example4
	% Problema minimizar
	% z=3x1+2x2+4x3
	% sujeito a 
	%	2x1+x2+3x3 = 60
	%	3x1+3x2+5x3 >=160
	%
	%	x1,x2,x3 >= 0

	sinal = [0 1];
	z = [3 2 4];
	A = [2 1 3;
		 3 3 5];
	b = [60 160];
	
	cd ..
	main(z,A,b,0,sinal)
	
	%Resultados
	% z = 110
	% x1 = 0
	% x2 = 45
	% x3 = 5