x = [1970; 1971; 1972; 1973; 1974; 1975; 1976; 1977; 1978; 1979; 1980; 1981; 1982; ...
1984; 1986; 1988; 1990; 1992; 1995; 1998];
y = [19.19; 13.00; 11.31; 9.96; 8.42; 7.50; 5.65; 6.34; 4.58; 6.91; 4.74; ...
3.22; 2.74; 2.22; 1.10; 1.44; 1.39; 1.16; 0.98; 0.85];
 m = length(x);

[a1,b1,r1,R1] = RegressaoLinear(x,y);
f_estimada = @(x)(a1+b1*x);
 figure;
 hold on;
 plot(x,y,'*');
 fplot(f_estimada,[x(1),x(m)]);
 
% [a2,b2,r2,R2] = RegressaoLinear(log(x),log(y));
% f_estimada = @(x)(exp(a2)*x.^b2);
% hold on;
% plot(x,y,'*');
% fplot(f_estimada,[x(1),x(m)]);

[a3,b3,r3,R3] = RegressaoLinear(x,log(y));
f_estimada = @(x)(exp(a3)*(exp(b3).^x))
hold on;
%plot(x,y,'*');
fplot(f_estimada,[x(1),x(m)]);
title('q3')
xlabel('x');
ylabel('y');
legend('Pontos','Reg Linear','Reg Exponencial')
