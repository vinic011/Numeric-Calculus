function s = dotr(x,y)
    l = length(x);
    s = 0;
    for i = 1:l
        s = s + x(i)*y(i);
    end
end

