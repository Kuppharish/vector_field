function [A,C]=vector_cr_1(x_int,y_int,ox,oy,r,x_end,y_end,j)
vel=10;
gam=0.2;
beta=5;
xex = x_end;
yex = y_end;
options = simset('SrcWorkspace','current');
sim('Lyapunov',[],options)
plot(x.data,y.data,'k');
hold on
plot(xex,yex,'r*')
A=x.data;
C=y.data;
end