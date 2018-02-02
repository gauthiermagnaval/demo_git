%% Exercice 1

clear;

%% Question a
func = @(x) exp(-x.^2/2.)./sqrt(2.*pi);
integral(func,0.2,1.3)

%% Question b
A = [2,1;1,2];
Mx = [5;10];
Sx = [4,1;1,3];
My = A*Mx
Sy = A*Sx*transpose(A)

%% Question c