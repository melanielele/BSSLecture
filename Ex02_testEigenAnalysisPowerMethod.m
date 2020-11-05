% The power method for eigenvalue decomposition
%
% BMI500 Course
% Lecture:  An Introduction to Blind Source Separation and Independent Component Analysis
%           By: R. Sameni
%           Department of Biomedical Informatics, Emory University, Atlanta, GA, USA
%           Fall 2020
%
% Dependency: The open-source electrophysiological toolbox (OSET):
%       https://github.com/alphanumericslab/OSET.git
%   OR
%       https://gitlab.com/rsameni/OSET.git
%

close all;
clear
clc;

% Build a random signal
% change the N to be 4 to make a 4*4 matrix
N = 4;
T = 1000;
a = randn(1, N);
x = diag(a) * randn(N, T);
% Cx = x * x';
Cx = cov(x');

% Apply eigenvalue decomposition
% Read 'eig' help and compare with 'eigs'
%V is eigen vectors, D is the eigenvalue on the diagnosis
[V,D] = eig(Cx)

Itr = 100; % The number of power method iterations

% initialize the random nonzero vector 
v0 = rand(N, 1);
v1 = EigenAnalysisPowerMethodOriginal(Cx, v0, Itr);
scale1 = (Cx*v1)./v1;
lambda1 = mean(scale1)

% minus the first eigenvalue multiply the first eigenvector, so we can
% calcualte the second eigenvecotr and eigenvalue
C = Cx - lambda1 * (v1 * v1');
v2 = EigenAnalysisPowerMethodOriginal(C, v0, Itr);
scale2 = (Cx*v2)./v2;
lambda2 = mean(scale2)

C = C - mean(lambda2) * (v2 * v2');
v3 = EigenAnalysisPowerMethodOriginal(C, v0, Itr);
scale3 = (Cx*v3)./v3;
lambda3 = mean(scale3)

C = C - mean(lambda3) * (v3 * v3');
v4 = EigenAnalysisPowerMethodOriginal(C, v0, Itr);
scale4 = (Cx*v4)./v4;
lambda4 = mean(scale4)
