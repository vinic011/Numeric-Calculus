f=@(x,y)0.04*y;

h=0.2;
x0=0;
y0=1000;

x1 = x0+h;
y1 = passoEuler(f, h, x0, y0)

x2 = x1+h;
y2 = passoEuler(f, h, x1, y1)

x3 = x2+h;
y3 = passoEuler(f, h, x2, y2)

x4 = x3+h;
fvalores = [f(x0,y0) f(x1,y1) f(x2,y2) f(x3,y3)];
y4 = passoAdamsBashforth4(y3, h, fvalores)

x5 = x4+h;
fvalores = [f(x1,y1) f(x2,y2) f(x3,y3) f(x4,y4)];
y5 = passoAdamsBashforth4(y4, h, fvalores)


