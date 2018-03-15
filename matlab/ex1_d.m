figure
histogram(x(:,1), [0 1 2 3])
title('Coluna 1')
xlabel('estado')
ylabel('frequência')
path = strcat('../figs/ex1_1','.eps');
print(path,'-depsc2','-painters')

figure
histogram(x(:,2), [0 1 2 3])
title('Coluna 2')
xlabel('estado')
ylabel('frequência')
path = strcat('../figs/ex1_2','.eps');
print(path,'-depsc2','-painters')

figure
histogram(x(:,3), [0 1 2 3])
title('Coluna 3')
xlabel('estado')
ylabel('frequência')
path = strcat('../figs/ex1_3','.eps');
print(path,'-depsc2','-painters')

figure
histogram(x(:,4), [0 1 2 3])
title('Coluna 4')
xlabel('estado')
ylabel('frequência')
path = strcat('../figs/ex1_4','.eps');
print(path,'-depsc2','-painters')

