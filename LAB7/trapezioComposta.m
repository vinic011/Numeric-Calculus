function [I,e] = trapezioComposta(f,a,b,n)
    h = (b-a)/n;
    I = (f(a)+f(b))/2;
    for i = 1:(n-1)
        I = I + f(a+i*h);
    end
    I = I*h;  
    if n == 1
        x = [a,(a+b)/2,b];
    else
        x = a:((b-a)/n):b;
    end
    x = x';
    y = f(x);
    T = TabelaDiferencasDividas(x,y);
    
    maxDD = max(abs(T(:,3)));
    f2zeta = maxDD*2;
    e = abs((a-b)*(h^2)*f2zeta/12);
end