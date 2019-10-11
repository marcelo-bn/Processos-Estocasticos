function N = rand_pascal(k,p)

sucesso = 0;
N = 0;

while sucesso < k           
    
    if rand() < p
        sucesso = sucesso + 1;
    end
    N = N + 1;
     
end



    
    
    
    
    
    
    
