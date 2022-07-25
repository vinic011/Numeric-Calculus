function [r, n] = BisseccaoVisual (f, a, b, eps, maxits)
figure;
fplot(f, [a, b]);
grid on;
hold on;
n = 0;
while n < maxits
    r = (a+b)/2;
    plot(r, 0, '*');
    input ('Aperte uma tecla para continuar');
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
