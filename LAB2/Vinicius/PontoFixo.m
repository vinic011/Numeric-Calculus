function [r,n] = PontoFixo(f,g,x0,epsilon, maxIteracoes)
n = 0;
r = x0;
while n < maxIteracoes
    r = g(r);
    n = n + 1;
    yr = f(r);
    
    if abs(yr) < epsilon
        break;
    end
end
if n >= maxIteracoes
    disp('O numero maximo de interacoes foi atingido')
end
end