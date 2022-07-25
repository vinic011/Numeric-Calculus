%x = [0 1 2 3 4 5];
%y = [2.1 7.7 13.6 27.2 40.9 61.1];
%[a,b,c,R] = AjusteParabola(x,y);

%x = [0.5 1 2 3 4];
%y = [2500 2400 2000 1800 1500];
%[a,b,r,R] = RegressaoLinear(x,y);
%[a1,b1,c1,R1] = AjusteParabola(x,y);

x = [10 20 30 40 50 60 70 80];
y = [25 70 380 550 610 1220 830 1450];
 m = length(x);

[a,b,r1,R] = RegressaoLinear(x,y);
f_estimada = @(x)(a+b*x);
 figure;
 hold on;
 plot(x,y,'*');
 fplot(f_estimada,[x(1),x(m)]);
 
[a,b,r2,R] = RegressaoLinear(log(x),log(y));
f_estimada = @(x)(exp(a)*x.^b);
hold on;
plot(x,y,'*');
fplot(f_estimada,[x(1),x(m)]);

[a,b,r3,R] = RegressaoLinear(x,log(y));
f_estimada = @(x)(exp(a)*(exp(b).^x));
hold on;
plot(x,y,'*');
fplot(f_estimada,[x(1),x(m)]);
