function y=my_variance(x)
L=length(x);
mu=(1/L)*sum(x);
y=(1/L)*(sum((x-mu).^2))
end
