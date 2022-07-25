function [r,n] = BisseccaoVisual(f,a,b,epsilon, maxIteracoes)
figure;
fplot(f,[a,b]);
grid on;
hold on;
n =0;
while n < maxIteracoes
    r = (a + b)/2;
    plot(r,0,'*');
    %input('Aperte uma tecla para continuar');
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