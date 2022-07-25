%tarefa 3a

t1 = zeros(60,1);
t2 = zeros(60,1);

for i = 1:3
    u = 10^i;
    for j = 1:20
        x = rand(u);
        y = rand(u);
        tic
        z = x*y;
        t1(j+20*i-20+1,1)=toc;
    
        tic;
        prodt(x,y);
        t2(j+20*i-20+1,1)=toc;
    end
end

m1 = mean(t1(1:20))
m2 = mean(t1(21:40))
m3 = mean(t1(41:60))
m4 = mean(t2(1:20))
m5 = mean(t2(21:40))
m6 = mean(t2(41:60))
%Tarefa 3b

t1 = zeros(4000,1);
t2 = zeros(4000,1);

for N = 1:200
    for j = 1:20
        x = rand(N);
        y = rand(N);
        
        tic
        z = x*y;
        t1(N*20+j-20,1)=toc;
    
        tic;
        prodt(x,y);
        t2(N*20+j-20,1)=toc;
    end
end
T1 = zeros(200,1);
T2 = zeros(200,1);

for i = 1:N
    T1(i) = mean(t1(i*20-20+1:i*20));
    T2(i) = mean(t2(i*20-20+1:i*20));
end

plot(T1)
hold on
plot(T2)
hold on 
title('Tarefa 3B')
ylabel('tempo(s)')
xlabel('numero da operacao')
legend('T1','T2')
hold off
