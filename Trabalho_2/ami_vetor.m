function ami = ami_vetor(vetorBIT, amplitude)

palavra = vetorBIT;
a = amplitude;
aux = -a;
vetor1 = zeros(1,length(palavra));

for i = 1: length(palavra)
    
    if palavra(i) == 0
       vetor1(i) = 0;
    else
        if aux == -a
            vetor1(i) = a;
            aux = a;
        else
            vetor1(i) = -a;
            aux = -a;
        end
    end
end

ami = vetor1;

end