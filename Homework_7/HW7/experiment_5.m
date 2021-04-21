close all;clear;clc;
x = zeros(500,1);
x_bar = zeros(1000,1);
for i = 1:1000
    for j = 1:500
        x(j) = f5(rand);
    end
    x_bar(i) = mean(x);
end
figure(1);
histogram(x,'BinEdges',-1:0.05:1);
xlabel('x');
ylabel('frequency');
figure(2);
histogram(x_bar,'BinEdges',-1:0.01:1);
xlabel('$\bar{x}$','Interpreter','LaTeX');
ylabel('frequency');
function y = f5(x)
    % mapping Unif(0,1) to f(x)
    y = sign(x - 1 / 2) .* sqrt(abs(2 * x - 1));
end