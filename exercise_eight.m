clc;
clear all;
close all;
Fc=250;
Fs=1000;
fc=Fc/Fs;
delF=50;
pbr=0.001 % pass band ripplel;
omega=(2*pi*delF/Fs);
Lm=32;
A=-20*log10(pbr);
N= floor((A-8)/(2.285*omega)+1);

alpha=(N-1)/2;
if A>50
    beta=0.1102*(A-8.7);
elseif A<21
    beta=0.0;
else
    beta=0.5842*(A-21)^0.4+0.07886*(A-21);
end

n=0:(N-1)
t=(n-alpha)/alpha;
t=t.^2;
k=length(t);
for i=1:k
    val(i)=1;
end
t=(val-t).^(1/2);
w= besel(beta*t,Lm)/besel(beta,Lm)
h=w*hd(n,fc,N)
plot(n,h)

 




