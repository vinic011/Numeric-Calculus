function resultado = Condicionamento_Refinamento(A, b)
[L, U, P] = LUP(A);
x = SolucaoLU(L, U, P, b);
for i = 1 : 3
    r = b - A*x;
    delta = SolucaoLU(L, U, P, r);
    x = x + delta;
end
resultado = max(abs((delta ./ x))) < 10 * eps;
end
    