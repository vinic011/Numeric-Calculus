%Questão 04:
f = @(x)(x^2+1e-7); 
a = -1; 
b = 0;
epsilon = 10^-4;
MaxIteracoes = 1000;

fplot(f,[-1,1]); 
xlabel x;
ylabel f(x);
grid; 
title('Gráfico de f');

[r1, n1] = Bisseccao(f, a, b, epsilon, MaxIteracoes);
[r2, n2] = NewtonRaphson(f, 0, 0, (a+b)/2, epsilon, MaxIteracoes);
[r3, n3] = Secante(f, a, b, epsilon, MaxIteracoes);
[X,FVAL,EXITFLAG,OUTPUT]=fzero(f,0.5); 

f1 = f(r1);
f2 = f(r2);
f3 = f(r3);

r = @(x)(1e-7-x)

figure;
fplot(f,[-1,0]); 
xlabel x;
ylabel f(x);
grid; 
title('Secante aos pontos (a, f(a)), (b, f(b))');
hold on;
fplot (r, [-1,0]);

