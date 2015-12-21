function example
	%Simplex caso:
	%                    min(max) z = c*x
	%                 Subject to: Ax <= b
	%                              x >= 0
	%
	% z = 2x1+3x2
	% sujeito a:
	% 	x1+2x2 <= 30
	% 	x1+x2 <= 20
	% 	x1+x2>=0
	z = [2 3];
	A = [1 2 
	     1 1];
	b = [30 20];

	cd ..
	main(z,A,b,1,[-1 -1]); 
	
	%Resposta
	% z = 50
	% x1 = 10
	% x2 = 10
