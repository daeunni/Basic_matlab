% contour 그리기
clear ; clf
f = @(x,y) x*y*exp(-x^2-y^2)       % @(x, y) : x와 y에 대한 함수라는 뜻 
f(2,3)  % fix, determine

N=100;
x=linspace(-2, 2, N);
y=linspace(-2, 2, N); 

% define matrix 
for i=1:N
    for j=1:N
        u(i,j)= f(x(i), y(j));  % discrete function 
    end 
end 

mesh(u') % -> default figure (100 points) 

% contour 그리기 -> x, y direction 지정 
clear ; clf
f = @(x,y) 5*x*y*exp(-x^2-y^2);       % @(x, y) : x와 y에 대한 함수라는 뜻 
f(2,3)  % fix, determine

% N=100;
Nx = 40 ; Ny = 80 ;         % direction 각각 지정 
x=linspace(-1, 1, Nx);
y=linspace(-2, 2, Ny); 

% define matrix 
for i=1:Nx
    for j=1:Ny
        u(i,j)= f(x(i), y(j));  % discrete function 
    end 
end 

% mesh(u')      % -> default figure (100 points) 
mesh(x, y, u')  % extra dimension 
axis image 


% contour 그리기
clear ; clf
f = @(x,y) 5*x*y*exp(-x^2-y^2);       % @(x, y) : x와 y에 대한 함수라는 뜻 
f(2,3)  % fix, determine

% N=100;
Nx = 40 ; Ny = 80 ;         % direction 각각 지정 
x=linspace(-1, 1, Nx);
y=linspace(-2, 2, Ny); 

% define matrix 
for i=1:Nx
    for j=1:Ny
        u(i,j)= f(x(i), y(j));  % discrete function 
    end 
end 

% mesh(u')         % -> default figure (100 points) 
mesh(x, y, u')     % extra dimension 
hold on            % put together 

mesh(x, y, 0*u'+0.5)        % make plane -> shift (시각화를 위해 same size of matrix 그림)
% -> intersection curve가 contour가 된다 

contour(x, y, u', [0.5, 0.5], 'k')  % contour (30개의 contour line)
axis image 

% contour 그리기
clear ; clf
f = @(x,y) sqrt(x^2+y^2)-1;       % @(x, y) : x와 y에 대한 함수라는 뜻 
f(2,3)  % fix, determine

% N=100;
Nx = 100 ; Ny = Nx ;         % direction 각각 지정 
x=linspace(-2, 2, Nx);
y=linspace(-2, 2, Ny); 

% define matrix 
for i=1:Nx
    for j=1:Ny
        u(i,j)= f(x(i), y(j));  % discrete function 
    end 
end 

% mesh(u')         % -> default figure (100 points) 
mesh(x, y, u')     % extra dimension 
hold on            % put together 

mesh(x, y, 0*u')        % make plane -> shift (시각화를 위해 same size of matrix 그림)
% -> intersection curve가 contour가 된다 

contour(x, y, u', [0, 0], 'k')  % contour (30개의 contour line)
axis image 

