function y=hd(x,Fc,N);
p=x-(N-1/2)*2*pi*Fc;
if x==(N-1)/2
    y=2*Fc;
else 
    y=2*Fc*sin(p)/p;
end
end