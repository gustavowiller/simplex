function example2
	%Simplex caso:

	% z = -2x1+4x2+6x3
	% sujeito a:
	% 	x1+x2+x3 <= 100
	% 	2x1-x2+5x3 <= 50
	% 	3x1+x3<=200
	z = [-2 4 6];
	A = [1 1 1;
	     2 -1 5;
		 3 0 1];
	b = [100 50 200];
	sinal = [-1 -1 -1];
	
	cd ..
	main(z,A,b,1,sinal)
	
	%Resultado
	% z = 450

