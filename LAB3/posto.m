function x = posto(A)
    [numlinha,numcoluna] =size(A);
    n = min(numlinha,numcoluna);
    x = n - sum(sum(abs(A'))==0);
end