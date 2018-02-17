function [A,C]=vector_st(x_int,y_int,x_end,y_end)
chi_inf  = pi/2;    
alpha  = 1.65;      
k      = 0.02;     
kk     = pi/2;      
epsi   = 0.1;       
w     = 0;       
phiw   = 230/180*pi;
Va     = 10;    
i=-1;
course_int = 0;
ang=atan2(y_end-y_int,x_end-x_int);
a=(y_end-y_int)/(x_end-x_int);
b=y_end-x_end*a;
options = simset('SrcWorkspace','current');
sim('vector_field',[],options)
plot(x.data,y.data,'k');
A=x.data;
C=y.data;
end
