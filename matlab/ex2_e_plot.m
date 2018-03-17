figure
plot(1:length(x),x)
set(gca, 'YTick', 0:5)
title('Graph of states')
xlabel('iteration')
ylabel('states')
path_e0 = strcat('../figs/ex2e_','states','.eps');
print(path_e0,'-depsc2','-painters')

figure
plot(1:length(x),J(x))
title('Graph of cost function (J)')
xlabel('iteration')
ylabel('J')
path_e0 = strcat('../figs/ex2e_','j','.eps');
print(path_e0,'-depsc2','-painters')

figure
histogram(x(1:1000), [1.5 2.5 3.5 4.5 5.5])
title('Temperatura 0.1')
xlabel('estado')
ylabel('frequência')
path = strcat('../figs/ex2e_h1','.eps');
print(path,'-depsc2','-painters')

figure
histogram(x(1001:2000), [1.5 2.5 3.5 4.5 5.5])
title('Temperatura 0.0631')
xlabel('estado')
ylabel('frequência')
path = strcat('../figs/ex2e_h2','.eps');
print(path,'-depsc2','-painters')

figure
histogram(x(2001:3000), [1.5 2.5 3.5 4.5 5.5])
title('Temperatura 0.05')
xlabel('estado')
ylabel('frequência')
path = strcat('../figs/ex2e_h3','.eps');
print(path,'-depsc2','-painters')

figure
histogram(x(3001:4000), [1.5 2.5 3.5 4.5 5.5])
title('Temperatura 0.0431')
xlabel('estado')
ylabel('frequência')
path = strcat('../figs/ex2e_h4','.eps');
print(path,'-depsc2','-painters')

figure
histogram(x(4001:5000), [1.5 2.5 3.5 4.5 5.5])
title('Temperatura 0.0387')
xlabel('estado')
ylabel('frequência')
path = strcat('../figs/ex2e_h5','.eps');
print(path,'-depsc2','-painters')

figure
histogram(x(5001:6000), [1.5 2.5 3.5 4.5 5.5])
title('Temperatura 0.0356')
xlabel('estado')
ylabel('frequência')
path = strcat('../figs/ex2e_h6','.eps');
print(path,'-depsc2','-painters')

figure
histogram(x(6001:7000), [1.5 2.5 3.5 4.5 5.5])
title('Temperatura 0.0333')
xlabel('estado')
ylabel('frequência')
path = strcat('../figs/ex2e_h7','.eps');
print(path,'-depsc2','-painters')

figure
histogram(x(7001:8000), [1.5 2.5 3.5 4.5 5.5])
title('Temperatura 0.0315')
xlabel('estado')
ylabel('frequência')
path = strcat('../figs/ex2e_h8','.eps');
print(path,'-depsc2','-painters')

figure
histogram(x(8001:9000), [1.5 2.5 3.5 4.5 5.5])
title('Temperatura 0.0301')
xlabel('estado')
ylabel('frequência')
path = strcat('../figs/ex2e_h9','.eps');
print(path,'-depsc2','-painters')

figure
histogram(x(9001:10000), [1.5 2.5 3.5 4.5 5.5])
title('Temperatura 0.0289')
xlabel('estado')
ylabel('frequência')
path = strcat('../figs/ex2e_h10','.eps');
print(path,'-depsc2','-painters')

for i=1:10
    xi = x(1+(i-1)*1000:i*1000);
    v = [sum(xi==1)/1000, sum(xi==2)/1000, sum(xi==3)/1000, ... 
        sum(xi==4)/1000, sum(xi==5)/1000]
end