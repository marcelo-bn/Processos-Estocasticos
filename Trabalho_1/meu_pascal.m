% Numero de experimentos de Bernoulli para 
% conseguir o k-ésimo sucesso.
function PN = meu_pascal(k,p,s)

PN = zeros(size(s));  

% Variáveis auxiliares 
b = k - 1;

for i = 1 : length(s)
    coe_bin = factorial(s(i)-1) ./ (factorial(b).*factorial(s(i)-1-b));
    PN(i) = coe_bin.* p.^k.*(1-p).^(s(i) - k);  
end
 
end
