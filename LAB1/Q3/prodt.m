function p = prodt(x,y)
    N = size(x,1);
    p = 0;
    for i = 1:N
        for j = 1:N
            for k = 1:N
                p = p + x(i,k)*y(k,j);
            end
        end
    end
                
end