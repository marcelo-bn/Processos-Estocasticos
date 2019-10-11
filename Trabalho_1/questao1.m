clear all
close all
clc

N = 100000;                        % Número de experimentos

% Parametros 
n = 50;                             
p = 0.25;

s = 0:1:n;                         % Espaço amostral

for i = 1 : N
    K(i) = rand_binom(n,p);
end

% PMF para experimento Monte Carlo (Prática (utilizando rand_binom() ))
pmf_pratica = hist(K,s) / N;
bar(s, pmf_pratica)

% PMF para experimentos teóricos (Utilizando função meu_binom())
X = meu_binom(n,p);
hold on
stem(s, X, 'g')

title('Questao 1')
xlabel('k') 
ylabel('P_{K}(k)')
legend('Pratica','Teorica') 

% Media prática e teórica
media_pratica = mean(K)
media_teorica = n*p

% Variancia prática e teórica 
var_pratica = var(K)
var_teorica = n*p*(1-p)

