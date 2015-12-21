function example3
	% Problema maximizar
	% z=3x1+5x2
	% sujeito a 
	%	x1 <= 60
	%	2x2 <= 12
	%	3x1+2x2 <= 18
	%	x1,x2,x3 >= 0
	sinal = [-1 -1 -1];
	z = [3 5];
	A = [1 0 
		0 2
		3 2];
	b = [4 12 18];
	isMax = 1; 
	
	cd ..
	main(z,A,b,1,sinal)

	