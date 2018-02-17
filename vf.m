close all;clear;clc
chi_inf  = pi/2;    
alpha  = 1.65;      
k      = 0.02;     
kk     = pi/2;      
epsi   = 0.1;       
w     = 0;       
phiw   = 230/180*pi;
Va     = 13;    
%A = 3;    
%phiA = pi;    
x_int = 0;y_int = -50;course_int = 0;
ang = atan2(150,300); a = 0.5;b = 0; 
i=-1;
%endx = 300;
%Method =3;
%Vg0 = InitialVg(A,0,w,phiw,Va,course_int);
simout=sim('vector_field');
figure
plot(x.data,y.data,'k','linewidth',2)
hold on
plot([0 300],[0 150],'--b','linewidth',2)
%{
figure
[vfx,vfy] = meshgrid(0:20:300,-50:20:200);
wx = w*cos(phiw)*ones(size(vfx));
wy = w*sin(phiw)*ones(size(vfy));
quiver(vfx,vfy,wx,wy,0.5,'c','linewidth',0.5)
hold on
plot([0 300],[0 200],'--b','linewidth',2)
%quiver(x.data(1:50:end),y.data(1:50:end),1*cos(chi_d.data(1:50:end)),1*sin(chi_d.data(1:50:end)),0.4,'r','linewidth',0.5)
har=[pi/6 pi/4 pi/3 pi/2 pi];
kup=['k' 'r' 'g' 'm' 'y'];
for j=1:5
    kk=har(j);
    simout=sim('vector_field');
    plot(x.data,y.data,kup(j),'linewidth',2)
end
title('Straight Line Following trajectory')
xlabel('x[m]')
ylabel('y[m]')
grid on
colormap(jet)
axis equal
legend('constant wind vector','Desired path','kk=pi/6','kk=pi/4','kk=pi/3','kk=pi/2','kk=pi')
%legend('constant wind vector','UAV path','Desired path','Desired Course')
%}