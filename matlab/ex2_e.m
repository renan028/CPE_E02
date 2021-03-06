% Exercicio 2e

clear all
clc

x0 = 1;
number_of_iteration = 1000;
number_of_temperature_iteration = 10;
T = [0.1 0.0631 0.05 0.0431 0.0387 0.0356 0.0333 0.0315 0.0301 0.0289];

x = zeros(number_of_iteration * number_of_temperature_iteration, 1);
x(1) = x0;

costs = [0.5 0.2 0.3 0.1 0.4];
J = @(n) costs(n);

B = @(n,t) exp(-n/t);

counter = 1;
counter_temperatures = 1;
Jmin = J(x(counter));
xmin = x(counter);
while counter_temperatures <= number_of_temperature_iteration
    while counter < number_of_iteration * counter_temperatures
        states = 1:5;
        states(x(counter)) = [];
        r = randi(4);
        xk = states(r);
        Jxk = J(xk);
        dJ = Jxk - J(x(counter));
        counter = counter + 1;
        if dJ < 0
            x(counter) = xk;
        else
            a = rand;
            if B(dJ,T(counter_temperatures)) > a
                x(counter) = xk;
            else
                x(counter) = x(counter - 1);
            end
        end
        if Jxk < Jmin
            Jmin = Jxk;
            xmin = xk;
        end
    end
    counter_temperatures = counter_temperatures + 1;
end

histogram(x(1:1000),[1 2 3 4 5])