clear all;
close all;
clc;

% Numero de bits a ser codificado
N = 100000;

% Amplitude da codificacao
amplitude = 5;
% Palavra a ser codificada
palavra = rand(1,N) < 0.5;

% Codificando a palavvra
cod_polar = polar_vetor(palavra, amplitude);
cod_ami   = ami_vetor(palavra, amplitude);

% Realizando a media de cada codificacao
media_polar = mean(cod_polar)
media_ami = mean(cod_ami)

% Autocorrelacao de cada codificacao
[R1, ell] = xcorr(cod_polar, 30, 'biased');
[R2, ell2] = xcorr(cod_ami, 30, 'biased');

% Plotando autocorelacao polar
figure(1)
stem(ell, R1);
title('Autocorrelacao Polar')

% Plotando autocorrelacao AMI
figure(2)
stem(ell2, R2);
title('Autocorrelacao AMI')