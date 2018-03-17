function y = J(x)
n = size(x);
y = zeros(n(1),1);
for i=1:n(2)-1
    y = y + 100*(x(:,i+1) - x(:,i).^2).^2 + (1 - x(:,i)).^2;
end