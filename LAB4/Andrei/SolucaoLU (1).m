function x = SolucaoLU(L, U, P, b)
z = P * b;
n = length(L);

%Resolução de Ly = z, lembrando que L é triangular inferior:
y = zeros(n, 1);
y(1) = z(1)/L(1, 1);
for k = 2 : n
    s = 0;
    for j = 1 : k - 1
        s = s + L(k, j)*y(j);
    end
    y(k)=(z(k)-s)/L(k, k);
end

%Resolução de Ux = y, lembrando que U é triangular superior:
x = zeros(n, 1);
x(n) = y(n)/U(n, n);
for k = 1 : n - 1
    s = 0;
    for j = n - k + 1 : n
        s = s + U(n-k, j)*x(j);
    end
    x(n - k) = (y(n-k)-s)/U(n-k, n-k);
end
end