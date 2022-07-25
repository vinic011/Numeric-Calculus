function [r, n] = NewtonRaphsonVisual(f, proverDerivada, df, x0, epsilon, MaxIteracoes)
n = 0;
figure;
if proverDerivada == 1
    g = @(x) df(x);
else
    g = @(x) (f(x+10^-12)-f(x))/10^-12;
end
while n < MaxIteracoes
    r = x0 - f(x0)/g(x0);
    n = n + 1;
    plot(n, r, '*');
    hold on;
    grid;
    xlabel('n');
    ylabel('r');
    title('Aproximação r x n Newton-Raphson');
    if abs(f(r)) < epsilon
        break;
    end
    x0 = r;
end
if n >= MaxIteracoes
    disp('o número máximo de iterações foi atingido');
end
end
        