%Condição de Viabilidade:
% A Variável que sai da base é a variável básica associada com a menor razão
% não negativa (que tenha um denominador estritamente positivo)
function [linha] = viabilidade(A, coluna)
    
    %V -> vetor de teste da razao minima
    V = A(2:end,end)./A(2:end,coluna);%Começa da segunda linha pois ignora a primeira linha referente a função z
    
    %Atualiza os valores menores que zero para Inf
    idx = V < 0;
    V(idx) = inf;
    
    [val linha] = min(V);
    linha = linha + 1; %Por ter começado da segunda linha, soma mais um, para o indice ser referente a matriz A. 