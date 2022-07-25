function [L, U, P] = LUP(A)
n = size(A);
P = eye(n);
L = zeros(n);
U = A;
for j = 1 : n - 1
    q = j;
    max = abs(U(j, j));
    for k = j + 1 : n
        if abs(U(k, j)) > max
            max = abs(U(k, j));
            q = k;
        end
    end
    if q ~= j 
        for k = 1 : n
            t = U(j, k);
            U(j, k) = U(q, k);
            U(q, k) = t;
            t = P(j, k);
            P(j, k) = P(q, k);
            P(q, k) = t;
            t = L(j, k);
            L(j, k) = L(q, k);
            L(q, k) = t;
        end
    end
    if abs(U(j, j)) <= 10*eps
        break;
    else
        r = 1/U(j, j);
        for i = j + 1 : n
            m = r * U(i, j);
            L(i, j) = m;
            U(i, j) = 0;
            for k = j + 1 : n
                U(i, k) = U(i, k) -m * U(j, k);
            end
        end
    end
end
L = L + eye(n);
end
    
        