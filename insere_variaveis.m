function [A z var var_art header_line n_vardecisao] = insere_variaveis(z, A, sinal)
	n = size(A,1); %quantidade de restrições
	n_vardecisao = size(z,2); 
	var = n_vardecisao; %var começa da ultima numeraçao da quantidade de variaveis na função z111
	var_art = [];
	header_line = [];

	%Inserir variaveis de sobra e folga
	for i = 1:n
		if (sinal(i) == 1) %Maior ou Igual	
			var = var +1;
			A(i,var)= -1;%Insere variável de sobra
		end
		if (sinal(i) == -1)% Menor ou Igual
			var = var + 1;
			A(i,var) = 1; %Insere variavel de folga
		end
	end

	%Onde não tiver variáveis de folga -> Inserir variáveis artificiais
	for i = 1:n
		if (sinal(i) ~= -1)% entra ->  (maior ou igual) || (igualdade)
			var = var +1;
			A(i,var)= 1;
			var_art(var)=1;  %Determina as variáveis artificiais
		end
	end

	%Determina as variáveis de base, e armazena a sequência no vetor header_line
	for i=1:n
		[val arg] = max(A(i	,n_vardecisao+1:end) > 0);
		header_line(i) = arg+n_vardecisao;
	end

	%inserir valores nulores na equação z referente as variaveis inseridas.
	z(var) = 0;
	z = -z; 
	z = [z 0];%Insere valor do lado direito da equação