% Número de sucessos obtidos em n experimentos de Bernoulli
% Entradas: n (quantidade de experimentos), p (prob. de sucesso)
% Saída: K (prob. de cada quantidade ser sucesso) 

function K = meu_binom(n,p)

k = 0:1:n;
PK = zeros(1,n+1);

coe_bin = factorial(n) ./ ((factorial(k)).*(factorial(n-k)));

for i = 1 : n+1
    PK(i) = coe_bin(i) .* p.^k(i).*(1-p).^(n - k(i));  
end
    K = PK;

end

