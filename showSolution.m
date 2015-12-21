function showSolution(A,var_base,n,n_vardecisao)
	z_valor = A(1,end);
	b = A(2:end,end); %Retira o vetor B, referente aos valores da solução;
	n2 = size(var_base,2)
	list = zeros(1,n);

	var_base
	%Ordena os resultados no vetor list
	for i = 1:n2
		list(var_base(i)) = b(i);
	end

	%Exibe os resultados
	disp('Solução ótima: ');
	disp('z = ')
	disp(z_valor)
	
	disp('Variaveis de decisão')
	disp('Indice | Valor');
	for i = 1:n_vardecisao
		disp([i list(i)]);
	end
	
	disp('Variaveis de folga')
	disp('Indice | Valor | Recurso');
	for i = n_vardecisao+1:n
		val = list(i);
		disp([num2str(i) '	' num2str(val)  '	' num2str(get_status_recurso(val))]);
	end
	