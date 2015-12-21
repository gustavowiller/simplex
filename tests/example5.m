function example5
	% Minimiza z = 4x1 + x2
	%	Sujeito
	%		3x1 + x2  =  3
	%		4x1 + 3x2 >= 6
	%		x1 +  2x2 <= 4

	z = [4 1];
	A = [
			3 1
			4 3
			1 2
		];
	b = [3 6 4];
	isMax = 0; 
	sinal = [0 1 -1]
	
	cd ..
	main(z,A,b,isMax,sinal);  
	
	%Resposta
	% z = 3,4
	% x1 = 0,4
	% x2 = 1,8
	