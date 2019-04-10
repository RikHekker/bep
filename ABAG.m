eg= 0.5;
eb=0.75;
a=0.75;
dg=0.001953;
db=0.000976;
g=[0];
b=[0];
e=[0];
u=[0];
y=[0];
yd=[0];
for k=2:1:30;
yd=[yd; k*0.01];
e=[e;a*e(k-1)+(1-a)*sign(y(k-1)-yd(k))];
b=[b;satur((b(k-1)+db*heaviside(abs(e(k))-eb)*sign(e(k)-eb)))];
g=[g;satur(g(k-1)+dg*sign(abs(e(k))-eg))];
u=[u;satur(b(k)+g(k)*sign(y(k-1)-yd(k)))];
y=u;
end
k=1:1:30;
plot(k, yd);
hold on
plot(k, y);

