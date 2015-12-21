function [A var_base] = simplex(A,isMax,var_base)
	while ( criterioParada( A(1,1:end-1), isMax) )
		%Condição de Otimalidade
		coluna = otimalidade(A,isMax); %obtem a coluna pivô, além do valor entre elas
		
		%Condição de Viabilidade
		linha = viabilidade(A, coluna); % Obtem a linha pivô

		%Operações de Gauss-Jordan
		A = gaussJordan(A, linha, coluna)  %calcula todas as outras linhas, incluindo z

		
		%Mapear as variaveis da solução
		idxl =  linha - 1; %Devido a primeira linha z, de estar concatenado na matriz A.
		var_base(idxl) = coluna;
		var_base

		pause
	end