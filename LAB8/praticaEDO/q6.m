b = [-40.8;-0.8;-0.8;-200.8]
% T4-2.04*T2+T0
% T6-2.04*T4+T2
% T8-2.04*T6+T4
% T10-2.04*T8+T6
A = [ -2.04       1       0      0;
          1   -2.04       1      0;
          0       1   -2.04      1;
          0       0       1  -2.04]
y = A\b;
x = [2,4,6,8];
figure
hold on;
title('Questão 6')
ylabel('T(x) ºC')
xlabel('x (m)')
plot(x,y)
grid;