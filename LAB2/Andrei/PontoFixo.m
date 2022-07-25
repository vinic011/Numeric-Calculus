function [r, n] = PontoFixo (f, g, x0, epsilon, MaxIteracoes)
n = 0;
while n < MaxIteracoes
    r = g(x0);
    n = n + 1;
    if abs(f(r)) < epsilon
        break;
    end
    x0 = r;
end
if n >= MaxIteracoes
    disp('o número máximo de iterações foi atingido');
end
end