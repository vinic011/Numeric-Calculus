%Tarefa 2A
dim = 10^7;
N = 1000;

t1 = zeros(N,1);
t2 = zeros(N,1);
t3 = zeros(N,1);

for i = 1:N
    x = rand(dim,1);
    y = rand(dim,1);
    
    tic;
    u = x' * y;
    t1(i,1) = toc;
    
    tic;
    u = dot(x,y);
    t2(i,1) = toc;
    
    tic;
    u = dotr(x,y);
    t3(i,1) = toc;
end

plot(t1)
hold on
plot(t2)
hold on 
plot(t3)
title('Tarefa 2A')
ylabel('tempo(s)')
xlabel('numero da operacao')
legend('t1','t2','t3')
hold off

%Tarefa 2B
T1 = zeros(N,1);
T2 = zeros(N,1);
T3 = zeros(N,1);

for i = 1:1000
    T1(i) = mean(t1(1:i));
    T2(i) = mean(t2(1:i));
    T3(i) = mean(t3(1:i));
end
figure;
plot(T1)
hold on
plot(T2)
hold on 
plot(T3)
title('Tarefa 2B')
ylabel('tempo(s)')
xlabel('numero da operacao')
legend('T1','T2','T3')
hold off




