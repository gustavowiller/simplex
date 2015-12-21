function [NA] = gaussJordan(A, linha, coluna)
	lp = A(linha,:)/A(linha,coluna); %Obtem a nova linha pivô
	fl = size(A,1);
	for i = 1:fl
		if i == linha
			NA(linha,:) = lp;
		else
			NA(i,:) = ( lp *- A(i,coluna)) + A(i,:);
		end
	end
end