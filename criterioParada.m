function resposta = criterioParada(z,isMax)
	if(isMax)
		resposta = min(z) < 0;
	else
		resposta = max(z) > 0; 
	end
