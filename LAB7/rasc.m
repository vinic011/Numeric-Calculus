f = @(x) 1-exp(-x)
figure;
fplot(f,[0,4]);
title('Cicuito RCV')
xlabel('tempo t(s)');
ylabel('carga (C)');
grid;