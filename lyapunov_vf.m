%clc;
%clear all;
j=1;
vel=10;
gam=0.2;
r=30;
beta=5;
x_int=-29.7527;
y_int=-3.8440;
xcs=0;
ycs=0;
%B=pi/4;
ox=0;
oy=0;
%xex=xcs-r*sin(B);
%yex=ycs-r*cos(B);
xex=inf;
yex=inf;
simout=sim('Lyapunov');
%figure
plot(x.data,y.data,'k')
hold on
plot(x_int,y_int,'g*')
%{
hold on
x_int=-100;
y_int=-200;
simout=sim('Lyapunov');
plot(x.data,y.data,'k')
[x,y] = meshgrid(-200:20:200,-200:20:200);
mag=sqrt(x.*x+y.*y);
k=mag-r;
c=sqrt(k.*k+r.*r+gam.*gam)/vel;
x1=gam.*y./c;
y1=-gam.*x./c;
wx=-(k./c).*(x./mag)+x1;
wy=-(k./c).*(y./mag)+y1;
quiver(x,y,wx,wy,0.5,'g','linewidth',1);
th = 0:pi/50:2*pi;
xunit = r * cos(th);
yunit = r * sin(th);
%h = plot(xunit, yunit,'b','linewidth',2);
%}
