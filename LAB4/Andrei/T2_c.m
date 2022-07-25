A = sprandn(1000, 1000, .01) + 100*eye(1000);
b = rand(1000, 1);
[dr1, dr2] = Tarefa2(A, b);