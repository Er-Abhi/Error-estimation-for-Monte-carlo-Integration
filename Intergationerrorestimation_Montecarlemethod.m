clc; clear; close all;
%% Error estimation with one varible.
f = @(x) (cos(50.*x) + sin(50.*x));
N_sample = 1024;
a = rand(N_sample,1);
f_value = f(a);
mean_a = mean(f_value);
Error = std(f_value)/ sqrt(N_sample);
fprintf('Monte carlo error Estimation (%d), %f +/- %f. \n', N_sample,mean_a,Error);
%% Error estimation with two varibles
g = @(x,y) 3*x.^2 + 5*y.^2;
x = zeros(N_sample,1);
for ii = 1:N_sample
    x_v = rand();
    y_v = rand();
    x(ii) = g(x_v,y_v);
end   
mean_x = mean(x);
Error = std(x)/ sqrt(N_sample);
fprintf('Monte carlo error Estimation (%d), %f +/- %f. \n', N_sample,mean_a,Error);

