function yProx = passoEuler(f, h, xi, yi)
    yProx = yi + h*f(xi, yi);
end