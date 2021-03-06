close all;clear;clc;
x_int=-300;
y_int=0;
ps=pi/4;
r=20;
R=30;
ox1=x_int+r*sin(ps);
oy1=y_int-r*cos(ps);
%temp=(-oy1*r-ox1*sqrt(ox1*ox1+oy1*oy1-r*r))/(ox1*ox1+oy1*oy1);
temp=(ox1*oy1-r*sqrt(ox1^2+oy1^2-r^2))/(ox1^2-r^2)
ab=atan(temp)+pi/2;
%num=r^2*(sqrt(x_int^2+2*r*x_int*sin(ps)+r^2)-sqrt(R*(R+2*r)));
%den=(R+r)*(x_int^2+2*r*x_int*sin(ps)+r^2);
xcf=r*cos(ab)-sin(ab)*sqrt(R*(R+2*r));
ycf=r*sin(ab)-cos(ab)*sqrt(R*(R+2*r));
tf=acos(xcf/(R+r));
xex=ox1+r*cos(ab);
yex=oy1+r*sin(ab);
%xcf=(R+r)*cos(tf);
%ycf=(R+r)*sin(tf);
xen=xcf-r*cos(ab);
yen=ycf-r*sin(ab);
xf=R*cos(tf);
yf=R*sin(tf);
[P,Q]=vector_cr_1(x_int,y_int,ox1,oy1,r,xex,yex,1)
[S,T]=vector_st(P(end),Q(end),xen,yen);
[U,W]=vector_cr_1(S(end),T(end),xcf,ycf,r,xf,yf,-1);
vector_cr_1(U(end),W(end),0,0,R,inf,inf,1);
plot(xf,yf,'b*')
plot(0,0,'g*')

