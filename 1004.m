%% Quiver(화살표) 그리기 
clear; clf
quiver(1,2,3,4,0)   % 방향 화살표 
% (1,2) : starting point
% x축으로 3칸, y축으로 4칸 -> 최종 end point는 (4,6)
% 0 추가 : Actual coordinate를 보여줌 

hold on 

plot(1,2,'ro') ; plot(4,6, 'bo')  % start point & end point 
% -> 화살표와 맞지 않음. 위에 0 옵션 추가 필요 

axis([0 10 0 10]) ; grid on   % axis 범위 지정
title('Daeun Lee')

%% Circle Vector field 그리기 
clear; clf ; hold on 

Nx = 20 ; Ny = 20 ; 
x = linspace(-2, 2, Nx) ; 
y = linspace(-2, 2, Ny) ; 
s = 0.5 ;    % scaling factor 

for i=1:Nx
    for j=1:Ny
quiver(x(i), y(j), -y(j), x(i)) ; 
    end 
end 

axis image 
axis([-5 5 -5 5]) ; grid on   % axis 범위 지정
title('Daeun Lee')

%% Circle Vector field 그리기 - scaling factor 사용 
clear; clf ; hold on 

Nx = 50 ; Ny = 50 ; 
x = linspace(-2, 2, Nx) ; 
y = linspace(-2, 2, Ny) ; 
s = 0.1 ;    % scaling factor 

for i=1:Nx
    for j=1:Ny
quiver(x(i), y(j), -s*y(j), s*x(i), 0) ;   % scaling factor multiple
    end 
end 

axis image 
axis([-3 3 -3 3]) ; grid on   % axis 범위 지정
title('Daeun Lee')

%% Circle Vector field 그리기 -> density 조절(30%만 plotting하기) 
clear; clf ; hold on 
Nx = 50 ; Ny = 50 ; 
x = linspace(-2, 2, Nx) ; 
y = linspace(-2, 2, Ny) ; 
s = 0.1 ;    % scaling factor 

for i=1:Nx
    for j=1:Ny
        r = rand(1)   % 0~1사이 random variable
        if r < 0.5    % 이럴 때만 plot -> vector field의 trend 관찰 
quiver(x(i), y(j), -s*y(j), s*x(i), 0) ;   % scaling factor multiple
        end
    end
end 

axis image 
axis([-3 3 -3 3]) ; grid on   % axis 범위 지정
title('Daeun Lee')

%% Circle Vector field 그리기 -> streamline 
clear; clf ; hold on 
Nx = 20 ; Ny = 20 ;       % number of point  
x = linspace(-2, 2, Nx) ; 
y = linspace(-2, 2, Ny) ; 

% meshgrid 추가 
[xx, yy] = meshgrid(x,y)       % xx : 오직 x만 collect / yy : 오직 y만 collect 
u = -yy ; v = xx ;  

s = 0.1 ;    % scaling factor 
for i=1:Nx
    for j=1:Ny
        r = rand(1)   % 0~1사이 random variable
        if r < 0.8    % 이럴 때만 plot -> vector field의 trend 관찰 
quiver(x(i), y(j), -s*y(j), s*x(i), 0) ;   % scaling factor multiple
        end
    end
end 

% streamline 추가 
for k = 1:10          % starting point 지정 
a = 2 * rand(1) -1    % -1~+1 사이 random number 
b = 2 * rand(1) -1
    streamline(stream2(xx, yy, u, v, a, b, [0.01, 1000]))   % 0.01이 작을수록 accurate 
    % a, b는 starting point
end 

axis image  ; axis([-3 3 -3 3]) ; grid on   % axis 범위 지정
title('Daeun Lee')
