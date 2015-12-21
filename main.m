% z -> vetor de coeficientes da equação z
% A -> Matriz de vetores das equações de Restrições
% B -> Vetor Coluna do lado direito das equações de restrições
% isMax -> Vetor que sinaliza se a função é de maximização ou minimização; isMax==1 => Maximização | isMax==0 Minimização
% Sinal -> Vetor que representa os sinais utilizado nas equações de restrição:
%			Cada sinal é representando como: 
%				1	>=  
%				0	=
%				-1	<= 
function main(z,A,b,isMax,sinal)
	
	[A z var var_art var_base n_vardecisao] = insere_variaveis(z, A, sinal)
	if(~isMax)
		[z var_art] = metodo_m_grande(z,A,b,var,var_art,var_base)	
	end	
	A = concatena_matriz_simplex(A,z,b);


 	[A var_base] = simplex(A,isMax,var_base); 
 	showSolution(A,var_base,var,n_vardecisao)