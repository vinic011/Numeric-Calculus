function [r, n] = PosicaoFalsa (f, a, b, epsilon, MaxIteracoes)
n = 0;
while n < MaxIteracoes
    r = (a*f(b) - b*f(a))/(f(b)-f(a));
    n = n + 1;
    yr = f(r);
    if abs(yr) < epsilon
        break;
    end
    if f(a) * yr < 0
        b = r;
    else
        a = r;
    end
end
if n >= MaxIteracoes
    disp('o número máximo de iterações foi atingido');
end
end
