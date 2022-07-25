function [r,n] = BisseccaoVisual(f,a,b,epsilon, maxIteracoes)
n =0;
figure;
fplot(f,[a,b]);
grid on;
hold on;

while n < maxIteracoes
    r = (a + b)/2;
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