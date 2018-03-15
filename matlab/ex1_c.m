clear all
clc

init = [0 1 2];
n = 100;
x = zeros(n,4);
for i = 1:n
    x(i,1) = init(randi(3));
    for j = 2:4
        list = [0 1 2 x(i,j-1)];
        r = randi(4);
        x(i,j) = list(r);
    end
end