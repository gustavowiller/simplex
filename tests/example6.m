function example6
	%Simplex caso:
	%                    min(max) z = c*x
	%                 Subject to: Ax <= b
	%                              x >= 0
	%
	% z = 2x1+3x2
	% sujeito a:
	% 	16x1+8x2 <= 192
	% 	4x1+8x2 <= 88
	%	8x1+8x2 <= 112
	% 	x1+x2>=0
	z = [3 2];
	A = [16 8 
	     4 8
		 8 8
		 ];
	b = [192 88 112];
	
	cd ..
	main(z,A,b,1,[-1 -1 -1]); 
	
	%Resposta
	% z = 38
	% x1 = 10
	% x2 = 4
