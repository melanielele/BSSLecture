A=[4 1;1 3];
[V,d]=eig(A);

% Using the power method
v0=[1 1];
Itr=20;
[v,lambda]=EigenAnalysisPowerMethod(A, v0, Itr);