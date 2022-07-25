%Questão 02:
f = @(x)(2.718281828^x + (sin(cos(x)))^2); 
a = -1; 
b = 1;
epsilon = 10^-4;
MaxIteracoes = 1000;

figure;
fplot(f,[-70,-65]); 
xlabel x;
ylabel f(x);
grid; 
title('Gráfico de f');

[r1, n1] = Bisseccao(f, a, b, epsilon, MaxIteracoes);
[r2, n2] = NewtonRaphsonVisual(f, 0, 0, (a+b)/2, epsilon, MaxIteracoes);
[r3, n3] = Secante(f, a, b, epsilon, MaxIteracoes);
[X,FVAL,EXITFLAG,OUTPUT]=fzero(f,[-68, -67]); 

f1 = f(r1);
f2 = f(r2);
f3 = f(r3);
    
