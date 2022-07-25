f = @(x) x^2 + x - 6;
df = @(x) 2*x + 1;
g = @(x)sqrt(6-x);
fplot(f)
hold on;
[r,n] = Secante(f,1.0,3.0,10^(-4),1000)
hold on;
fplot(g)

