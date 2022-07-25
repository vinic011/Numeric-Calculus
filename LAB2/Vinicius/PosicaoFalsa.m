function [r,n] = PosicaoFalsa(f,a,b,epsilon, maxIteracoes)
n =0;
while n < maxIteracoes
    r = (-b*f(a)+a*f(b))/(f(b)-f(a));;
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