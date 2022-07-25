function [x, dr] = GaussJacobi(A, b, x0, epsilon, maxIteracoes) 
    n = size(A,1);
    C = zeros(n);
    g = zeros(n,1);
    for i = 1 : n
        for j = 1 : n
            if i == j
                C(i,j) = 0;
            else
                C(i,j) = - A(i,j)/A(i,i);
            end
        end
    end
    
    for i = 1 : n
        g(i) = b(i)/A(i,i);
    end

    x = x0;
    for i = 1 : maxIteracoes
        xold = x;
        x = C*x+g;
        d = max(abs(x-xold));
        dr(i) = d/ max(abs(x));
        if abs(dr(i)) < epsilon
            break;
        end
    end
end