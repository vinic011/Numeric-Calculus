f = @(x)(x^7 + atan(90*x)/10); 
a = -1;
b = 1.01;
x0 = (a+b)/2;
fplot(f)
hold on;
grid;
hold on;
f(r)
title('Questão5')
ylabel('y')
xlabel('x')
legend('f(x)')
hold off
%[X,FVAL,EXITFLAG,OUTPUT] = fzero(f,x0)
%[r,n] = Bisseccao(f,a,b,10^(-4),1000)
%[r,n] = NewtonRaphson(f,0,df,x0,10^(-4),1000)
[r,n] = Secante(f,a,b,10^(-4),1000)
