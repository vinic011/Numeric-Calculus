function [r, n] = PosicaoFalsaVisual (f, a, b, eps, maxits)
n = 0;
figure;
fplot(f, [a, b]);
grid on;
hold on;
while n < maxits
    r = (a*f(b) - b*f(a))/(f(b)-f(a));
    reta = @(x) f(a) + (x-a)*(f(b)-f(a))/(b-a);
    fplot (reta, [a,b]);
    input ('Aperte qualquer tecla para continuar');
    n = n + 1;
    yr = f(r);
    if abs(yr) < eps
        break;
    end
    if f(a) * yr < 0
        b = r;
    else
        a = r;
    end
end
if n >= maxits
    disp('o número máximo de iterações foi atingido');
end
end