function D = calcular(n,x)
    k = 1;
    u = 10000;
    while k < n+1
        u = u - x;
        k = k + 1;
    end
    D = u;
end


        
