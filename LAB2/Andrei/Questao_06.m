%Questão 06:
f = @(x)(x^2-4); 
a = -3; 
b = 3;
epsilon = 10^-4;
MaxIteracoes = 1000;

fplot(f,[-3,3]); 
xlabel x;
ylabel f(x);
grid; 
title('Gráfico de f');

[r1, n1] = Bisseccao(f, a, b, epsilon, MaxIteracoes);
[r2, n2] = NewtonRaphson(f, 0, 0, (a+b)/2, epsilon, MaxIteracoes);
[r3, n3] = Secante_noplot(f, a, b, epsilon, MaxIteracoes);
[X,FVAL,EXITFLAG,OUTPUT]=fzero(f,1); 

f1 = f(r1);
f2 = f(r2);
f3 = f(r3);