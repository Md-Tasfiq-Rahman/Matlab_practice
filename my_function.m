function y=my_function(V1,I1,V2)
A=[90 -60;-60 82];
a=[V1 0]';
Aa=inv(A)*a;
vin1=Aa(2,1);
vx1=10*vin1;
vx2=(-20/7)*I1;
C=[60 -30;-30 50];
c=[0 -V2]';
Cc=inv(C)*c;
vin3=Cc(1,1);
vx3=10*vin3;
y=vx1+vx2+vx3;
end


