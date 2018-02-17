close all;clear;clc;
hold on
x_int=-100;
y_int=10;
ps=5*pi/4;
%tf=pi-.15;
r=20;
R=30;
ox1=x_int-r*sin(ps);
oy1=y_int+r*cos(ps);
m=(ox1*oy1+r*sqrt(ox1^2+oy1^2-r^2))/(ox1^2-r^2);
B=atan(m);
xex = ox1+r*sin(B);
yex = oy1-r*cos(B);
ox2=-r*sin(B)-cos(B)*sqrt(R*(R+2*r));
oy2=r*cos(B)-sin(B)*sqrt(R*(R+2*r));
tf=asin(oy2/(R+r));
%ox2=(r+R)*cos(tf);
%oy2=(r+R)*sin(tf);
xf=-R*cos(tf);
yf=R*sin(tf);
B=atan2(oy2-oy1,ox2-ox1);
xen=ox2+r*sin(B);
yen=oy2-r*cos(B);
[A,C]=vector_cr_1(x_int,y_int,ox1,oy1,r,xex,yex,-1);
plot(A,C,'k');
plot(x_int,y_int,'g*')
[P,Q]=vector_st(A(end),C(end),xen,yen);
[S,T]=vector_cr_1(P(end),Q(end),ox2,oy2,r,xf,yf,-1);
vector_cr_1(xf,yf,0,0,R,inf,inf,1);
plot(0,0,'b*')



