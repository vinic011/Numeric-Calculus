function [r,n] = Secante(f,x0,x1,epsilon, maxIteracoes)
n = 0;
i = x0 ;
r = x1;
figure;
while n < maxIteracoes
    k = r;
    r = r - ((r-i)*f(r))/(f(r)-f(i));
    i = k;
    n = n + 1;
    plot(n,r, '*');
    grid;
    hold on;
    title('raiz x n pelo secante')
    xlabel('n')
    ylabel('r')
   % legend('f(x)')
    if abs(f(r)) < epsilon
        break;
    end
end
if n >= maxIteracoes
    disp('O numero maximo de interacoes foi atingido')
end
end