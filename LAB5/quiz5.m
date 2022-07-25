%p = [1,2,3];
%polyval(p,2) polinomio com os coeficientes

% v = [1 2 3]
% v = fliplr(v) inverte

%poly([1 2]) (x-1)*(x-2)=x^2-3x+2

%p = [1 2 3]
%q = [1 1]
%conv(p,q) multiplica polinomios

%x1 = [1 2 3 4];
%x2 = [5 6 7 8 9 10];
%sum_poly_coeff(x1,x2)

%x = [-1;0;2]
%y = [4;1;-1]
%p1 = polyfit(x,y,1)
%p2 = polyfit(x,y,2)
%p3 = polyfit(x,y,3)
%hold on
%grid
%plot(x,y,'*')
%syms x;
%pl1 = poly2sym(p1,x)
%fplot(pl1,[-2,3],'g');
%pl2 = poly2sym(p2,x)
%fplot(pl2,[-2,3],'b');
%pl3 = poly2sym(p3,x)
%fplot(pl3,[-2,3],'r');

%x = [0;0.5;1;1.5;2];
%y=[3;1.8616;-0.5571;-4.1987;-9.0536];
%xq = [0.25;0.7;1.2;1.8];
%InterpolacaoSplineCubica(x,y,xq)
%Q3
f1 = @(x) 1/(1+15*x^2);
f2 = @(x) x^5 - 10*x^4 + 12*x^3 - 4*x^2 + 2*x -1;
f3 = @(x) cos(1/x)*(sin(1/x))^2;
f4 = @(x) x/(x-0.1);
f = @(x) cos(x);
for i = 1:10
    if i<6
        x(i) = (i-1)*0.2-1;
    else
        x(i) = (i)*0.2-1;
    end
    y(i) = f3(x(i));
        if i <= 9
            m(i) = x(i)+0.1;
            g(i) = f(m(i));
        end
end

T = TabelaDiferencasDividas(x,y);
p = PolinomioFormaNewton(x,T,8);
%r = polyfit(x, y, 2);

%u = PolinomioFormaLagrange(x,y);
%u = PolinomioInterpolador(x',y');
figure;
title('Gráfico f3')
ylabel('y')
xlabel('x')

hold on;
fplot(f3,[-0.99,0.99],'b')

hold on;
vals_p = polyval(p,m);
%plot(m, vals_p, '*g'); 

hold on;
fplot(poly2sym(p),[-0.99,0.99],'g')
%fplot(poly2sym(r), [-1,1],'r')
s = InterpolacaoSplineCubica(x,y,m)
legend('curva','p(x)','s(x)')
grid;


