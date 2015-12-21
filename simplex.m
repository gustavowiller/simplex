function [A var_base] = simplex(A,isMax,var_base)
	while ( criterioParada( A(1,1:end-1), isMax) )
		%Condi��o de Otimalidade
		coluna = otimalidade(A,isMax); %obtem a coluna piv�, al�m do valor entre elas
		
		%Condi��o de Viabilidade
		linha = viabilidade(A, coluna); % Obtem a linha piv�

		%Opera��es de Gauss-Jordan
		A = gaussJordan(A, linha, coluna)  %calcula todas as outras linhas, incluindo z

		
		%Mapear as variaveis da solu��o
		idxl =  linha - 1; %Devido a primeira linha z, de estar concatenado na matriz A.
		var_base(idxl) = coluna;
		var_base

		pause
	end