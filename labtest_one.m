clc;
clear;
close all;
f=100;
V=5;
t=0:0.0001:0.01;
x=V*sin(2*pi*f*t);
p=zeros(1,11);
q= 15*ones(1,29);
r=zeros(1,21);
s=-15*ones(1,29)
v=zeros(1,11);
y=[p q r s v]
%plot(t,x);
 %hold on;
%len=length(x);
%plot(t,y)
size(y)
 
plot(t,x)
hold on
plot(t,y)
