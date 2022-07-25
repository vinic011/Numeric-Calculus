f = @(x) x^3 - 2*x^2 + 10*x-5;
df = @(x) 3*x^2-4*x+10;
g = @(x)(5-x^3+2*x^2)/10;
h = @(x) x;
a = 0;
b = 1;
x0 = (a+b)/2;
figure
fplot(f,[a,b])
grid;
hold on;
fplot(h,[a,b])
hold on;
fplot(g,[a,b])
hold on;
fplot(df,[a,b])
hold on;
title('Questão1')
ylabel('y')
xlabel('x')
legend('f(x)','y = x','g(x)','df(x)')
hold off
%[X,FVAL,EXITFLAG,OUTPUT] = fzero(f,[a,b])
%[r,n] = Bisseccao(f,a,b,10^(-4),1000)
%[r,n] = PosicaoFalsa(f,a,b,10^(-4),1000)
%[r,n] = PontoFixo(f,g,x0,10^(-4),1000)
%[r,n] = NewtonRaphson(f,0,df,x0,10^(-4),1000)
[r,n] = Secante(f,a,b,10^(-4),1000)
f(r)