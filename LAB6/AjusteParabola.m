function [a,b,c,R] = AjusteParabola(x,y)
    m = length(x);
    A(1,1) = m;
    A(1,2) = sum(x);
    A(1,3) = sum(x.^2);
    A(2,1) = sum(x);
    A(2,2) = sum(x.^2);
    A(2,3) = sum(x.^3);
    A(3,1) = sum(x.^2);
    A(3,2) = sum(x.^3);
    A(3,3) = sum(x.^4);
    
    z(1,1) = sum(y);
    z(2,1) = sum(x.*y);
    z(3,1) = sum((x.^2).*y);
    
    d = A\z;
    a = d(1);
    b = d(2);
    c = d(3);
    
    f_estimada = @(x)(a+b*x+c*(x.^2));
    R = sum((f_estimada(x)-y).^2);
    
    hold on;
    plot(x,y,'*')
    fplot(f_estimada,[x(1),x(m)])
end