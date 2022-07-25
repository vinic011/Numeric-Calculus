function [r, n] = Secante(f, x0, x1, epsilon, MaxIteracoes)
n = 0;
figure;
while n < MaxIteracoes
    n = n + 1;
    r = x1 - (x1 - x0)*f(x1)/(f(x1) - f(x0));
    plot(n, r, '*');
    hold on;
    xlabel('n');
    ylabel('r');
    title('Secante: r x n');
    if abs(f(r)) < epsilon
        break;
    end
    x0 = x1; 
    x1 = r;
end
if n >= MaxIteracoes
    disp('o número máximo de iterações foi atingido');
end
end