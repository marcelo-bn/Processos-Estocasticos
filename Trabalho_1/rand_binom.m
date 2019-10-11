% Função que retorna a quantidade 
% de sucessos obtidos em "n" lançamentos


function K = rand_binom(n, p)

    vetor = zeros(1,n);

    for i = 1 : n
       if rand() < p
          vetor(i) = 1;
       else
           vetor(i) = 0;
       end
    end

    K = sum(vetor);
end