f = @(x)(sin(x)); 
a=-0.5;
b=7;
x0 = (a+b)/2;
%[X,FVAL,EXITFLAG,OUTPUT] = fzero(f,x0)
%[r,n] = Bisseccao(f,a,b,10^(-4),1000)
%[r,n] = NewtonRaphson(f,0,df,x0,10^(-4),1000)
[r,n] = Secante(f,a,b,10^(-4),1000)
figure
fplot(f,[-0.5,7])
hold on;
f(r)
title('Questão3')
ylabel('y')
xlabel('x')
legend('f(x)')
hold off