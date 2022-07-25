function [satisfaz,beta] = CriterioSassenfeld(A)
    n = size(A,1);
    b = zeros(n,1)
    %b(1) = sum(abs(A(1,:)))
    for i = 1 : n
        for j = 1 : n
            if i < j
                b(i) = b(i) + abs(A(i,j))*b(j)
            end
            if i < j
               b(i) = b(i) + abs(A(i,j))
            end
        end
    end  
    beta = max(abs(b(1:end))
    satisfaz = (beta < 1)
end