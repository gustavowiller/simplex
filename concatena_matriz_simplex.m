function A = concatena_matriz_simplex(A,z,b)
	A = [A b']; %Concatena os coeficientes de X ao lado b da equação
	A = [z; A]; %Concatena todas as equações numa só com o valor de Z na primeira linha
