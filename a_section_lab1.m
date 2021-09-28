%% lagrange
% clc;
% clear;
% close all;
% x=0:1:6;
% y=[0 0.8415 0.9093 0.1411 -0.7568 -0.9589 -0.2794];
% p=length(x);
% m=zeros(1,p);
% for i=1:p
%     s=[1];
%     t=1;
%     for j=1:p
%         if j==i
%             continue;
%         else
%             s=conv(s,[1 -1*x(j)]);
%             t=(x(i)-x(j))*t;
%         end
%     end
%    s=(y(i)*s)/t;
%     m=m+s;
% end
% x2=linspace(0,6,500)
% y2=polyval(m,x2)
% plot(x,y,'o',x2,y2)
%%
clc;
clear;
close all;
x=0:1:6;
 y=[0 0.8415 0.9093 0.1411 -0.7568 -0.9589 -0.2794];
 len=length(x);
 a=zeros(1,len);
 a(1,1)=y(1,1);
 for i=2:len
     s=a(1,1);
     
     for j=2:(i-1)
         t=1;
         for k=1:(j-1)
           t=t*(x(i)-x(k));
         end
         s=s+t*a(j)
     end
     w=1;
     for j=1:(i-1)
         w=w*(x(i)-x(j));
     end
     a(i)=(y(i)-s)/w
 end
         
         
         
             
             
 
 



        
