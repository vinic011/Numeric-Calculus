function [r,n] = NewtonRaphson(f,proverDerivada,df,x0,epsilon, maxIteracoes)
if proverDerivada == 1
    g =@(x) df(x);
else
    g = @(x) (f(x+10^(-12))-f(x))/10^(-12);
end
n =0;
r = x0;
while n < maxIteracoes
    r = r - f(r)/g(r);
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