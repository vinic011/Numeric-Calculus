function p = PolinomioFormaNewton(x,T,grau)
    n = grau+1;
    dd = T(1,1:n);
    p = dd(1);
    for i = 2:n
        p = sum_poly_coeff(p, poly(x(1:(i-1)))*dd(i));
    end
end