clear all;
close all;
clc; 

% Palavra PRE
palavra = [0 1 0 1 0 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 1 0 1];
% Amplitude da codificacao
amplitude = 5;

% Vetor para eixo do grafico
n = 0:1:length(palavra)-1;

% Chamando funcao que retorna um vetor com codificacao polar
vetor_polar = polar_vetor(palavra, amplitude);
% Chamando funcao que retorna um vetor com codificacao AMI
vetor_ami = ami_vetor(palavra, amplitude);

% Plotando codificacao polar
figure(1)
stem(n,vetor_polar,'r');
title ('Codificacao Polar')
axis([0 length(palavra)+1 -amplitude-2 amplitude+2]);

% Plotando codificacao ami
figure(2)
stem(n,vetor_ami,'r');
title ('Codificacao AMI')
axis([0 length(palavra)+1 -amplitude-2 amplitude+2]);