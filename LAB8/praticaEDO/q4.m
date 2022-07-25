f=@(x,y,z)-0.5*y;
g=@(x,y,z)4-0.3*z-0.1*y;

h=0.5;
xi = 0;
yi = 4;
zi = 6;
figure
title('Questão 4')
ylabel('y | z')
xlabel('x')
hold on;
xeuler = [0,0,0,0,0];
yeuler = [4,0,0,0,0];
zeuler = [6,0,0,0,0];
[yProx,zProx] = passoEuler2(f,g,h,xi,yi,zi)
for i=1:3
    xi=xi+h;
    xeuler(i+1) = xi;
    yi=yProx;
    yeuler(i+1) = yi;
    zi=zProx;
    zeuler(i+1) = zi;
    [yProx,zProx] = passoEuler2(f,g,h,xi,yi,zi)
    hold on;
end
xi=xi+h;
xeuler(5) = xi;
yeuler(5) = yProx;
zeuler(5) = zProx;

plot(xeuler,yeuler,'b')
plot(xeuler,zeuler,'--b')

f=@(x,y,z)-0.5*y;
g=@(x,y,z)4-0.3*z-0.1*y;

h=0.5;
xi = 0;
yi = 4;
zi = 6;
hold on;
xeuler = [0,0,0,0,0];
yeuler = [4,0,0,0,0];
zeuler = [6,0,0,0,0];
[yProx,zProx] = passoRK42(f,g,h,xi,yi,zi)
for i=1:3
    xi=xi+h;
    xeuler(i+1) = xi;
    yi=yProx;
    yeuler(i+1) = yi;
    zi=zProx;
    zeuler(i+1) = zi;
    [yProx,zProx] = passoRK42(f,g,h,xi,yi,zi)
    hold on;
end
xi=xi+h;
xeuler(5) = xi;
yeuler(5) = yProx;
zeuler(5) = zProx;

plot(xeuler,yeuler,'g')
plot(xeuler,zeuler,'--g')

[tv,Yv]=ode45('funsys',[0 2],[4;6]);
plot(tv,Yv(:,1),'r')
plot(tv,Yv(:,2),'--r')
legend('Y Euler','Z Euler','Y RK4','Z RK4','Y MATLAB','Z MATLAB')

