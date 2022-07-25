function x = CriterioLinhas(A)
    n = size(A,1);
    soma = sum(abs(A'))'-abs(diag(A));
    teste = soma < abs(diag(A));
    x = (sum(teste) == n);
end