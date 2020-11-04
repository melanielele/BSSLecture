function [v,lambda] = EigenAnalysisPowerMethod(A, v0, Itr)

%set the initial eigenvector
v = v0(:);

for k = 1 : Itr
    v = A * v;
    y = A*v;
    l=y'*v;
    m=v'*v;
    % here is the eigenvalue
    lambda =l/m;
    % approximate the next eigenvectvor
    plot(k,lambda,'-ok');
    hold on;
    v = v / sqrt(v' * v);
end

 
