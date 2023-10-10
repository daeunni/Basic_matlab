%% 3 dimension streamline 
clear; clf; x=linspace(-1.5,1.5,16); y=linspace(-1,1,11);
z=linspace(-0.7,0.7,8); nx=length(x); ny=length(y); nz=length(z);

[yy,xx,zz]=meshgrid(y,x,z);   % unreasonal ordering -> matlab의 data structure 때문 (중요) 

for i=1:nx
for j=1:ny
for k=1:nz
u(i,j,k)=y(j)*z(k); v(i,j,k)=-x(i)*z(k); w(i,j,k)=0;
end
end
end

quiver3(xx,yy,zz,u,v,w,2,'k')
sz=linspace(-0.5,0.5,11); sx=0.7+0*sz; sy=0.5+0*sz;
sl=streamline(stream3(yy,xx,zz,-v,-u,w,sx,sy,sz,[0.001 15000]));    % 15000 : iteration 개수 

set(sl,'color','red'), axis image, view(3)
title('Daeun Lee')
% Upper part : clock-wise / bottom part : anti clock-wise

%% 3 dimension streamline  2 -> 뭔 random 추출 추가? 
clear; clf; x=linspace(-1.5,1.5,16); y=linspace(-1,1,11);
z=linspace(-0.7,0.7,8); nx=length(x); ny=length(y); nz=length(z);

[yy,xx,zz]=meshgrid(y,x,z);   % unreasonal ordering -> matlab의 data structure 때문 (중요) 

for i=1:nx
for j=1:ny
for k=1:nz
u(i,j,k)=y(j)*z(k); v(i,j,k)=-x(i)*z(k); w(i,j,k)=0;
end
end
end

quiver3(xx,yy,zz,u,v,w,2,'k')
% sz=linspace(-0.5,0.5,11);
% sx=0.7+0*sz; 
% sy=0.5+0*sz;

% random number로 변경 -> 그래프 달라짐 
n = 100;      % 그리는 개수가 결정됨 
sz = 0.6 * 2 * (0.5 - rand(1,n));      % -6 ~ +6 scale로 바꾸려고 0.6을 곱함               
sx = 1.2 * 2 * (0.5 - rand(1,n));
sy = 0.9 * 2 * (0.5 - rand(1,n));

sl=streamline(stream3(yy,xx,zz,-v,-u,w,sx,sy,sz,[0.001 5000]));    % 15000 : iteration 개수 

set(sl,'color','blue'), axis image, view(3)
title('Daeun Lee')

%% Find interpolate points 

clear; clf; a=5; b=3; c=2;
Nx = 30 ; Ny = 20 ; Nz = 10 ; 

x=linspace(-6,6,Nx); 
y=linspace(-4,4,Ny); 
z=linspace(-3,3,Nz);
[yy,xx,zz]=meshgrid(y,x,z);

for k=1:length(z)
for j=1:length(y)
for i=1:length(x)
S(i,j,k)=1-sqrt((x(i)/a)^2+(y(j)/b)^2+(z(k)/c)^2);     % General 타원 방정식 
% 카다시안 coordinate?에 eleps soid가 있음 (3차원 타원) 

end
end
end

% Find interpolate point in 3d dimension 
p=patch(isosurface(xx,yy,zz,S,0)); camlight; lighting phong;      % mesh?로 구성되어 있음(확대하면 삼각형으로 구성) 
set(p,'FaceColor','magenta'); view(-23,17); box on;

xlabel('x'); ylabel('y'); axis image; axis([-6 6 -4 4 -3 3]);

% Upper part : clock-wise / bottom part : anti clock-wise
% whos 커멘드 윈도우 : 차원? 뽑기 가능 

%% Find interpolate points 
clear; clf; a=5; b=3; c=2;
Nx = 300 ; Ny = 200 ; Nz = 100 ;      % 추가됨 
x=linspace(-6,6,Nx); 
y=linspace(-4,4,Ny); 
z=linspace(-3,3,Nz);
[yy,xx,zz]=meshgrid(y,x,z);

for k=1:length(z)
for j=1:length(y)
for i=1:length(x)
S(i,j,k)=1-sqrt((x(i)/a)^2+(y(j)/b)^2+(z(k)/c)^2);     % General 타원 방정식 
% 카다시안 coordinate?에 eleps soid가 있음 (3차원 타원) 

end
end
end

for k=1:3
subplot(3,1,k)
% Find interpolate point in 3d dimension 
p=patch(isosurface(xx,yy,zz,S,0)); camlight; lighting phong;      % mesh?로 구성되어 있음(확대하면 삼각형으로 구성) 
set(p,'FaceColor','magenta'); view(-23,17); box on;

xlabel('x'); ylabel('y'); axis image; axis([-6 6 -4 4 -3 3]);

% 일부 point만 사용하기 
reducepatch(p, 1/k^6)      % 1/k^6 : 1 percent
end

%% 
