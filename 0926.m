% contour drawing
clear; clf
f = @(x,y) sqrt(x^2+y^2)-1;
Nx=10; Ny=Nx;      % Nx를 홀수로 설정하면 zero line을 볼 수 있음 
x=linspace(-2,2,Nx);
y=linspace(-2,2,Ny);
for i=1:Nx
    for j=1:Ny
        u(i,j)=f(x(i),y(j));
    end
end
mesh(x,y,u'); hold on
mesh(x,y,0*u');
[c h]=contour(x,y,u',[0 0],'k')

m = c(2,1) ; 
plot(c(1,2:m+1), c(2,2:m+1), 'ro')
axis image
title('Daeun Lee')

% 무슨 점 찾기
clear; clf
f = @(x,y) sqrt(x^2+y^2)-1;
Nx=11; Ny=Nx;
x=linspace(-2,2,Nx);
y=linspace(-2,2,Ny);
for i=1:Nx
    for j=1:Ny
        u(i,j)=f(x(i),y(j));
    end
end
mesh(x,y,u'); hold on
% mesh(x,y,0*u');
[c h]=contour(x,y,u',[0 0],'k')
m=c(2,1);
% plot(c(1,2:m+1),c(2,2:m+1),'ro')

plot(x(8), y(6), 'b*')
plot3([x(8) x(8)], [y(6) y(6)], [0 u(8,6)])
plot(x(9), y(6), 'r*')
plot3([x(9) x(9)], [y(6) y(6)], [0 u(9,6)])

axis image
title('Daeun Lee')
