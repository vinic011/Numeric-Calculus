%Tarefa 2: função que resolve a tarefa
function [dr1, dr2] = Tarefa2(A, b)
maxIteracoes = 1000;
epsilon = 10*eps;
x0 = zeros(max(size(A)), 1);
condicionamento_A = cond(A, inf)

T1 = zeros(1, 10);
T2 = zeros(1, 10);
T3 = zeros(1, 10);
T4 = zeros(1, 10);
for i = 1 : 10
    tic;
    [x1, dr1] = GaussJacobi(A, b, x0, epsilon, maxIteracoes);
    T1(i) = toc;
    tic; 
    [x2, dr2] = GaussSeidel(A, b, x0, epsilon, maxIteracoes);
    T2(i) = toc;
    tic;
    GP(A, b);
    T3(i) = toc;
    tic;
    [L, U, P] = LUP(A);
    SolucaoLU(L, U, P, b);
    T4(i) = toc;
end
    M1 = mean(T1(5 : 10))
    M2 = mean(T2(5 : 10))
    M3 = mean(T3(5 : 10))
    M4 = mean(T4(5 : 10))
end

    