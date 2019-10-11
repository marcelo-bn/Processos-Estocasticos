clear all
close all
clc

Nexp = 10000;                      % Números de experimentos 

% Parâmetros 
k = 5;
p = 0.4;

for i = 1 : Nexp
    N(i) = rand_pascal(k,p);
end


X = max(N);                  % Valor máximo dos experimentos
s = k:1:X;                   % Espaço amostral

% PMF para experimento Monte Carlo (Prática (utilizando rand_pascal() ))
pmf_pratica = hist(N, s)/ Nexp;
bar(s, pmf_pratica)

% PMF para experimentos teóricos (Utilizando função meu_pascal())
J = meu_pascal(k,p,s);
hold on
stem(s, J,'g')

title('Questao 2')
xlabel('n') 
ylabel('P_{N}(n)')
legend('Pratica','Teorica') 
    
% Media prática e teórica
media_pratica = mean(N)
media_teorica = k / p

% Variancia prática e teórica 
var_pratica = var(N)
var_teorica = k * ((1-p)/p^2)