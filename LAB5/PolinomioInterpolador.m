function p = PolinomioInterpolador(x,y)
    n = length(x);
    X = ones(n);
    for i = 1:n
        for j = 2:n
            X(i,j) = x(i)*X(i,j-1);
        end
    end
    a = linsolve(X,y);
    a = a';
    p = fliplr(a);
end