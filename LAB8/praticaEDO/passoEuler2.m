function [yProx,zProx] = passoEuler2(f,g,h,xi,yi,zi)
    yProx = yi + h*f(xi, yi, zi);
    zProx = zi + h*g(xi, yi, zi);
end