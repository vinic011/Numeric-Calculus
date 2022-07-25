f1 = @(x) x.^3 + 2*x.^2 -5;
f2 = @(x) 4*x.^6 -24*x.^5 +37*x.^4 + 2*x.^2 -5;
f3 = @(x)(sin(x))^2;
f4 = @(x) exp(x) ;
f5 = @(x) sin(exp(x));
f6 = @(x)((sin(x.^(-1)))^2)*(cos(x.^(-1)));
f7 = @(x) 13*(x-x.^2)*exp(-3*x/2);
% figure;
% fplot(f1,[0,4]);
% title('F1')
% xlabel('x');
% ylabel('y');
% grid;
[I, qtdeRec, qtdeDiv] = quadAdaptativa(f7,0,4,4,10^(-6))