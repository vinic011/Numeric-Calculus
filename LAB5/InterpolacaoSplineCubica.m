function yq = InterpolacaoSplineCubica (x, y, xq)
a = 1;
n = length(x) - 1;

tamanhoXQ = length(xq);
yq = zeros(tamanhoXQ, 1);

h = zeros(n+1, 1);
b = zeros(n+1, 1);
phi = zeros(n+1, 1);
c = zeros(n+1, 1);
d = zeros(n+1, 1);

for i = 1 : n
    h(i+a) = x(i+a) - x(i-1+a);
end

c(1+a) = 2*(h(1+a) + h(2+a));
for i = 2 : n - 1
    c(a+i) = 2*(h(a+i) + h(a+1+i)) - h(a+i)*h(a+i)/c(a+i-1);
end

for i = 0 : n - 1
   b(a+i) = 6*(y(a+i+1)-y(a+i))/h(a+i+1);
end

d(1+a) = b(1+a) - b(0+a);
for i = 2 : n - 1
    d(i+a) = (b(i+a) - b(i+a-1)) - (h(i+a)*d(i+a-1))/c(i+a-1);
end

phi(n-1+a) = d(n-1+a)/c(n-1+a);
for i = n - 2 : -1 : 1
    phi(i+a) = (d(i+a) - h(i+1+a)*phi(i+1+a))/c(i+a);
end

hold on;

for m = 1 : tamanhoXQ
    achou = false;
    i = 0;
    while (~achou)
        i = i + 1;
        if xq(m) < x(i)
            achou = true;
        end
    end
    i = i - 1;
    
    syms X;
    s = phi(a+i-1)*(x(i+a)-X)^3/(6*h(i+a))+phi(i+a)*(X-x(i+a-1))^3/(6*h(i+a))+(y(i+a)/h(i+a)-h(i+a)*phi(i+a)/6)*(X-x(i+a-1))+(y(i+a-1)/h(i+a)-h(i+a)*phi(i+a-1)/6)*(x(i+a)-X);
    w = simplify(s);
    
    fplot(w, [x(i), x(i+1)], 'red');
    
    r = sym2poly(s);
    yq(m) = polyval(r, xq(m));
end
%plot(xq, yq, '*r');
%plot(x, y, 'ob'); 
grid;

end