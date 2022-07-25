function x = GP(A,b)
n = length(A);
%Escalonamento + pivoteamento
for k = 1 : n-1
    [maior,index] = max(abs(A(k:end,k)));
    if(maior > A(k,k))
        linhaAtual = k;
        linhaMaior = index + k -1;
        linhaAux = A(linhaAtual,:);
        A(linhaAtual,:) = A(linhaMaior,:);
        A(linhaMaior,:) = linhaAux;
        baux = b(linhaAtual);
        b(linhaAtual) = b(linhaMaior);
        b(linhaMaior) = baux;
    end
    if maior == 0
    else
        for i = k+1 : n
            if(A(k,k) ~= 0)
                m = A(i,k)/A(k,k);
                A(i,k) = 0;
                for j = k+1 : n
                    A(i,j) = A(i,j)-m*A(k,j);
                    if abs(A(i, j)) <= 10*eps 
                        A(i, j) = 0; 
                    end
                end
                b(i) = b(i) - m*b(k);
                if abs(b(i)) < 10*eps
                    b(i) = 0.0;
                end
            end
        end
    end
end
postoA = posto(A);
postoAb = posto([A b]);
if postoA == postoAb 
    if postoA == n
        x(n)= b(n)/A(n,n);
            for k = n-1 :-1 : 1
                s =0;
                for j = k+1 : n
                    s = s + A(k,j)*x(j);
                end
                x(k) = (b(k)-s)/A(k,k);
                if abs(x(k)) <= 10*eps 
                    x(k) = 0; 
                end
            end
        x = x';
    else
        x(1) = NaN;
        for k = 2 : n
            x(k) = 0;
        end
    end
else
    x(1) = inf;
    for k = 2 : n
        x(k) = 0;
    end
end
end

