clc;
clear;
close all;
x=[1 2 3 4];
y=[0.5 0.3 0.8 0.1];
plot(x,y);
z=1:0.2:4
 t=interp1(x,y,z);
 len=length(t);
 s=[1 2*ones(1,len-2) 1];
 jog=s.*t;
 v=sum(jog,'all')*0.5*0.2
 m=1:len;
 t=zeros(1,len);
 t(rem(m,2)==0)=5;
 
     
 
