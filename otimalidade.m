%Condição de otimalidade -> A Variável que entra na base
%A variável que entra na base em um problema de maximização (minimização) é a variável não básica
%que tiver o coeficiente mais negativo (positivo) na linha z.
function [arg] = otimalidade(A,isMax)
	z = A(1,1:end-1); %paranãopegar o lado direito da equação
	if(isMax)
    	[val arg] = min(z);
    else
    	[val arg] = max(z);
    end