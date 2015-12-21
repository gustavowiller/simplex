function [z var_art] = metodo_m_grande(z,A,b,var,var_art,header_line)	
	
	M = 100; %Constante do metodo M Grande
	
	%Insere os valores de M grande na função Z
	z(logical(var_art)) = -M;

	%%%  Inicio Processo - Somar todas as linhas (variaveis artificais) e somar com a linha z
	% 1° Listar as variaveis artificais como vetor de inteiros
	var_art2 = var_art.*[1:var]; %Encontra o numero da variavel correspondente. Ex: [0 0 1 1] => [0 0 3 4]
	var_art2(var_art2==0) = []; %remove os zeros; Ex: [0 0 3 4] => [3 4]

	% 2° Buscar as linhas de A, referente as variaveis Artificiais
	n = size(var_art2,2);
	A = [A b']
	for(i = 1:n)
		Vsum(i,:) = A(find(header_line==var_art2(i)),:)
	end
	
	% 3° Realizar a soma
	z = z + sum(Vsum)*M; 
	%%%  Fim Processo - Somar todas as linhas (variaveis artificais) e somar com a linha z