%% 주식데이터? Transision(트랜지션?) 예시? 
clear; clf;
T(1)=datenum(2023,10,12)-datenum(2023,09,26);
T(2)=datenum(2023,11,9)-datenum(2023,09,26);
T(3)=datenum(2023,12,14)-datenum(2023,09,26);
T(4)=datenum(2024,01,11)-datenum(2023,09,26);
T(5)=datenum(2024,02,08)-datenum(2023,09,26);

TKV=[16.0000  295.0000   33.8500
16.0000  310.0000   17.6500
16.0000  312.5000   15.3500
16.0000  315.0000   12.6500
16.0000  317.5000   10.3500
16.0000  320.0000    8.3800
16.0000  322.5000    6.2900
16.0000  325.0000    4.6800
16.0000  327.5000    3.2900
16.0000  330.0000    2.1800
16.0000  332.5000    1.3600
16.0000  335.0000    0.7700
16.0000  337.5000    0.4400
16.0000  340.0000    0.2200
16.0000  342.5000    0.1100
16.0000  345.0000    0.0600
16.0000  347.5000    0.0400
16.0000  350.0000    0.0300
16.0000  352.5000    0.0200
16.0000  355.0000    0.0200
16.0000  357.5000    0.0100
16.0000  360.0000    0.0100
16.0000  362.5000    0.0100
16.0000  365.0000    0.0100
16.0000  375.0000    0.0100
16.0000  380.0000    0.0100
44.0000  315.0000   15.1000
44.0000  317.5000   13.1000
44.0000  320.0000   11.1000
44.0000  322.5000    9.4300
44.0000  325.0000    7.8500
44.0000  327.5000    6.4800
44.0000  330.0000    5.2200
44.0000  332.5000    4.1600
44.0000  335.0000    3.1600
44.0000  337.5000    2.4600
44.0000  340.0000    1.7900
44.0000  342.5000    1.3100
44.0000  345.0000    0.9400
44.0000  347.5000    0.6600
44.0000  350.0000    0.4800
44.0000  352.5000    0.3300
44.0000  355.0000    0.2400
44.0000  357.5000    0.1600
44.0000  360.0000    0.1300
44.0000  362.5000    0.0800
44.0000  365.0000    0.0600
44.0000  367.5000    0.0400
44.0000  370.0000    0.0300
44.0000  372.5000    0.0200
44.0000  375.0000    0.0200
44.0000  377.5000    0.0200
44.0000  380.0000    0.0200
44.0000  382.5000    0.0100
44.0000  385.0000    0.0100
44.0000  390.0000    0.0100
44.0000  402.5000    0.0100
79.0000  305.0000   25.7500
79.0000  310.0000   21.7000
79.0000  312.5000   17.5500
79.0000  325.0000   10.9000
79.0000  327.5000    9.6900
79.0000  330.0000    8.1800
79.0000  332.5000    6.8500
79.0000  335.0000    5.7500
79.0000  337.5000    4.8400
79.0000  340.0000    4.0400
79.0000  342.5000    3.2800
79.0000  345.0000    2.6800
79.0000  347.5000    2.1500
79.0000  350.0000    1.7100
79.0000  352.5000    1.4200
79.0000  355.0000    1.1300
79.0000  357.5000    0.8300
79.0000  360.0000    0.6500
79.0000  362.5000    0.5100
79.0000  365.0000    0.4000
79.0000  367.5000    0.3400
79.0000  370.0000    0.2700
79.0000  372.5000    0.2100
79.0000  375.0000    0.1700
79.0000  377.5000    0.1300
79.0000  380.0000    0.1200
79.0000  382.5000    0.0900
79.0000  385.0000    0.0700
79.0000  387.5000    0.0700
79.0000  390.0000    0.0600
79.0000  392.5000    0.0500
79.0000  395.0000    0.0500
79.0000  400.0000    0.0200
79.0000  405.0000    0.0200
79.0000  410.0000    0.0200
79.0000  415.0000    0.0200
79.0000  417.5000    0.0100
79.0000  420.0000    0.0100
79.0000  430.0000    0.0100
107.0000  330.0000    8.5100
107.0000  340.0000    4.6000
107.0000  345.0000    3.1500
107.0000  350.0000    2.1600
107.0000  355.0000    1.4000
107.0000  360.0000    0.9200
107.0000  365.0000    0.6600
107.0000  370.0000    0.4000
107.0000  375.0000    0.2700
107.0000  380.0000    0.1800
107.0000  385.0000    0.1300
107.0000  390.0000    0.1000
107.0000  395.0000    0.0600
107.0000  400.0000    0.0400
107.0000  410.0000    0.0300
107.0000  420.0000    0.0200
135.0000  345.0000    4.5600
135.0000  350.0000    3.1400
135.0000  370.0000    0.7300
135.0000  375.0000    0.5000
135.0000  380.0000    0.3500
135.0000  385.0000    0.2500
135.0000  390.0000    0.1800
135.0000  395.0000    0.1300
135.0000  400.0000    0.0900
135.0000  440.0000    0.0200
135.0000  465.0000    0.0100];

x=TKV(:,1);
y=TKV(:,2);
f=TKV(:,3)
plot(x,y,'.'); hold on
tri=delaunay(x,y);
trimesh(tri,x,y,f,'facecolor','b'); 
alpha(0.5)
title('Daeun Lee')


%% Generate random number 
clear; clf ; N=7; 
x = rand(1,N);
y = rand(1,N);
plot(x, y, 'r*'); axis image 
title('Daeun Lee')
% -> 점들을 삼각형으로 이어보기 

hold on       % 이거 써줘야 아래 plot이랑 같이 나옴

% Delaunay transition (딜로네 트라이앵글지에션..)
tri = delaunay(x,y) ;    % 딜로네 트라이앵글
% ex) tri =
     % 5     4     1 -> 5, 4, 1번 점 이어서 삼각형  
     % 1     3     2
     % .. (matrix임. 출력 개수는 point 개수와 관련) 
     % tri(1, :) 등으로 인덱싱 가능 

% 삼각형이 나오도록 선분을 그어보자!
a = tri(1,:)
plot([x(a(1)) x(a(2))], [y(a(1)) y(a(2))], 'k')
plot([x(a(2)) x(a(3))], [y(a(2)) y(a(3))], 'k')
plot([x(a(3)) x(a(1))], [y(a(3)) y(a(1))], 'k')
axis image 
title('Daeun Lee')

return 

% 반복문도 가능 
for i=1:length(tri)    
    a = tri(i,:); 
    plot([x(a(1)) x(a(2))], [y(a(1)) y(a(2))], 'k')
    plot([x(a(2)) x(a(3))], [y(a(2)) y(a(3))], 'k')
    plot([x(a(3)) x(a(1))], [y(a(3)) y(a(1))], 'k')
    axis image 
    pause(0.1)
end

title('Daeun Lee')

%% 점 위에 line 긋기.. 
clear; clf ; N=20; 
x = rand(1,N);
y = rand(1,N);
f = rand(1,N);
plot(x, y, 'r*') ; hold on       

for i=1:N
    plot3([x(i) x(i)], [y(i) y(i)], [0 f(i)], 'bo-')
end 

tri = delaunay(x,y) ;    % 딜로네 트라이앵글

for i=1:length(tri)    
    a = tri(i,:); 
    plot([x(a(1)) x(a(2))], [y(a(1)) y(a(2))], 'k')
    plot([x(a(2)) x(a(3))], [y(a(2)) y(a(3))], 'k')
    plot([x(a(3)) x(a(1))], [y(a(3)) y(a(1))], 'k')
    axis image 
    pause(0.1)
end

title('Daeun Lee')

%% 마지막 평면으로 잇기 
clear; clf ; N=20; 
x = rand(1,N);
y = rand(1,N);
f = rand(1,N);
plot(x, y, 'r*') ; hold on       

for i=1:N
    plot3([x(i) x(i)], [y(i) y(i)], [0 f(i)], 'bo-')
end 

tri = delaunay(x,y) ;    % 딜로네 트라이앵글

for i=1:length(tri)    
    a = tri(i,:); 
    plot([x(a(1)) x(a(2))], [y(a(1)) y(a(2))], 'k')
    plot([x(a(2)) x(a(3))], [y(a(2)) y(a(3))], 'k')
    plot([x(a(3)) x(a(1))], [y(a(3)) y(a(1))], 'k')
    axis image 
    pause(0.01)
end

trimesh(tri, x, y, f, 'facecolor', 'b');
alpha(0.5)
title('Daeun Lee')
