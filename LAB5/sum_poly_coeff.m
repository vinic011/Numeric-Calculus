function s = sum_poly_coeff(x1,x2)
order1 = length(x1);
order2 = length(x2);
max_order = max([order1 order2]);
if order1 == max_order
    new1 = x1;
    for i = 1:(max_order-order2) 
        new2(i) = 0;
    end
    for i = (max_order-order2+1):max_order
        new2(i) = x2(i-(max_order-order2));
    end
end
if order2 == max_order
    for i = 1:(max_order-order1) 
        new1(i) = 0;
    end
    for i = (max_order-order1+1):max_order
        new1(i) = x1(i-(max_order-order1));
    end
    new2 = x2;
end
s = new1+new2;
end