%syms x;
%f = (1./(x.^2));
% f_int = int(f);
% I = int(f,1,7);

f = @(x)(1./(x.^2));
% x = [1:0.1:7];
% y = f(x);
% I = trapz(x,y);

%[I,e] = trapezioComposta(f,1,7,1);
%[I1, e1] = simpson13Composta(f, 1, 7, 2);
[I, qtdeRec, qtdeDiv] = quadAdaptativa(f,1,7,4,10^(-6));
%quad()
%[I1,e1] = trapezioComposta(f,1,7,3290)