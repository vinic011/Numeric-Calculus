function p = PolinomioFormaLagrange(x,y)
     n = length(x);
     q = poly(x)
     for i = 1:n
        m = poly(x(i))
        numerador = deconv(q,m)
        denominador = polyval(numerador,x(i))
        L(i,:) = numerador/denominador
     end
     p = 0;
     for i = 1:n
       p = p + y(i)*L(i,:);
     end
end