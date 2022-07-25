P = [-119/14 -282/14 -127/14 101/14 72/14 9/14;
       1         0      0        0      0      0;
       0         1      0        0      0      0;
       0         0      1        0      0      0;
       0         0      0        1      0      0;
       0         0      0        0      1      0]
aut = eig(P)
aut = aut'
p = [-1 -119/14 -282/14 -127/14 101/14 72/14 9/14]
r = roots(p)
r = r'
pol = poly2sym(p)
pol = pol*(-14);
%p = @(x)(14*x^6 -119*x^5 + 282*x^4 +127*x^3 -101*x^2 -72*x -9)
%pol(-4.6458)
figure;
hold on;
grid;
title('Questão 1')
ylabel('p(x)')
xlabel('x')
fplot(pol,[-4.7,1],'r');

