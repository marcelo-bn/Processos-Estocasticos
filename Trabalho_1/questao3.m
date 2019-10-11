clear all
close all
clc

Nexp = 100000;              % Número de experimentos

disp(['Letra A'])
aux = 0;
n = 20;
p = 0.9;

z = meu_binom(n,p);

for i = 1 : Nexp
    K(i) = rand_binom(n,p);
    if K(i) >= 16
        aux = aux + 1;
    end
end

% Item I
A_media_teor = n*p
A_media_prat = mean(K)

% Item II
A_prob_prat = aux / Nexp
A_prob_teor = 0;
for i = 17 : 21
    A_prob_teor = A_prob_teor + z(i);
end
A_prob_teor


disp(['Letra B'])
aux = 0;
k = 16;
p = 0.9;
s = k:1:20;

x = meu_pascal(k,p,s);

for i = 1 : Nexp
    J(i) = rand_pascal(k,p);
    if J(i) > 15 & J(i) <= 20
        aux = aux + 1;
    end
end

% Item I
B_media_teor = k / p
B_media_prat = mean(J)

% Item II
B_prob_prat = aux / Nexp
B_prob_teor = sum(x)