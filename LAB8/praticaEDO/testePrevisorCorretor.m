f=@(x,y)-y^2;

h=0.1;
x0=1;
y0=1;

x1 = x0+h;
%y1 = passoEuler(f, h, x0, y0)
y1 = 0.9090909;

x2 = x1+h;
%y2 = passoEuler(f, h, x1, y1)
y2 = 0.8333333;

x3 = x2+h;
%y3 = passoEuler(f, h, x2, y2)
y3 = 0.7692307;

%-------Previsor-corretor para y4---------------
x4 = x3+h;

%previsor
fvalores = [f(x0,y0) f(x1,y1) f(x2,y2) f(x3,y3)];
y4_0 = passoAdamsBashforth4(y3, h, fvalores)

%corretor
fvalores = [f(x1,y1) f(x2,y2) f(x3,y3) f(x4,y4_0)];
y4_1 = passoAdamsMoulton4(y3, h, fvalores)

%corretor
fvalores = [f(x1,y1) f(x2,y2) f(x3,y3) f(x4,y4_1)];
y4_2 = passoAdamsMoulton4(y3, h, fvalores)

%-------Previsor-corretor para y5---------------
x5 = x4+h; %1.5
y4 = y4_2;

%previsor
fvalores = [f(x1,y1) f(x2,y2) f(x3,y3) f(x4,y4)];
y5_0 = passoAdamsBashforth4(y4, h, fvalores)

%corretor
fvalores = [f(x2,y2) f(x3,y3) f(x4,y4) f(x5,y5_0)];
y5_1 = passoAdamsMoulton4(y4, h, fvalores)

%corretor
fvalores = [f(x2,y2) f(x3,y3) f(x4,y4) f(x5,y5_1)];
y5_2 = passoAdamsMoulton4(y4, h, fvalores)
