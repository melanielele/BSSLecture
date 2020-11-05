function [v,lambda] = EigenAnalysisPowerMethod(A, v0, Itr)

%set the initial eigenvector
v = v0(:);
f1 = figure;
f2 = figure;
for k = 1 : Itr
    v = A * v;
    y = A*v;
    l=y'*v;
    m=v'*v;
    % here is the eigenvalue
    lambda =l/m;
    % approximate the next eigenvectvor
    %figure(1)
    set(0, 'CurrentFigure', f1)
    plot(k,lambda,'-ok');
    title("Eigenvalues vs. iteration")
    hold on;
    set(0, 'CurrentFigure', f2)
    %figure(2)
    plot(v);
    title("Principle  Vector")
    hold on;
    v = v / sqrt(v' * v);
end

 
