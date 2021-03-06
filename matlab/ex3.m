% Exercicio 3

clear all
clc

number_of_variables = 10;
number_of_iteration = 5000;
number_of_temperature_iteration = 30;
epsilon = 0.05;
T0 = 1;

T = T0;
x0 = zeros(1, number_of_variables);
x = zeros(number_of_iteration * number_of_temperature_iteration, 10);
x(1,:) = x0;

B = @(n,t) exp(-n/t);

counter = 1;
counter_temperatures = 1;
Jmin = J(x(counter,:));
xmin = x(counter,:);
while counter_temperatures <= number_of_temperature_iteration
    while counter < number_of_iteration * counter_temperatures
        r = randn(1,number_of_variables);
        xk = x(counter,:) + epsilon * r;
        Jxk = J(xk);
        dJ = Jxk - J(x(counter,:));
        counter = counter + 1;
        if dJ < 0
            x(counter,:) = xk;
        else
            a = rand;
            if B(dJ,T) > a
                x(counter,:) = xk;
            else
                x(counter,:) = x(counter - 1,:);
            end
        end
        if Jxk < Jmin
            Jmin = Jxk;
            xmin = xk;
        end
    end
    counter_temperatures = counter_temperatures + 1;
    T = T0 / log2(counter_temperatures + 1);
end
