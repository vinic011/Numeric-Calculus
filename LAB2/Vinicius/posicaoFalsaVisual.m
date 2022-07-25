function [r,n] = posicaoFalsaVisual(f,a,b,epsilon, maxIteracoes)
n =0;
while n < maxIteracoes
    r = (-b*f(a)+a*f(b))/(f(b)-f(a));
    reta = @(x) f(a) + (x-a)*(f(b)-f(a))/(b-a);
    fplot(reta,[a,b]);
    hold on;
    n = n + 1;
    yr = f(r);
    
    if abs(yr) < epsilon
        break;
    end
    if f(a)*yr < 0
        b = r;
    else 
        a = r;
    end
end
if n >= maxIteracoes
    disp('O numero maximo de interacoes foi atingido')
end
end