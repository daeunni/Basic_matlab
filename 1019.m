%% ABCD 영역 넓이 구하기? 
clear; clf; hold on
a=3; b=2; 
A=a*b;    % axb = -bxa
x=[0 a a 0]; y=[0 0 b b];        % point is oriented -> counter-clockwise distribution(random X) 
plot([x 0],[y 0],'bo-')

xc=a*rand(1); yc=-b+b*rand(1);
plot(xc,yc,'ro')
quiver(xc,yc,x(1)-xc,y(1)-yc,0); quiver(xc,yc,x(2)-xc,y(2)-yc,0)
x1=x(1)-xc; y1=y(1)-yc; x2=x(2)-xc; y2=y(2)-yc;

A1=0.5*abs(x1*y2-x2*y1);       % abs 지우면 A1은 항상 음수가 됨(-> axb는 음수가 됨. clock-wise orientation은 a에서 시작하기 때문) 
quiver(xc,yc,x(2)-xc,y(2)-yc,0); quiver(xc,yc,x(3)-xc,y(3)-yc,0)
x1=x(2)-xc; y1=y(2)-yc; x2=x(3)-xc; y2=y(3)-yc;

A2=0.5*abs(x1*y2-x2*y1);
quiver(xc,yc,x(3)-xc,y(3)-yc,0); quiver(xc,yc,x(4)-xc,y(4)-yc,0)
x1=x(3)-xc; y1=y(3)-yc; x2=x(4)-xc; y2=y(4)-yc;

A3=0.5*abs(x1*y2-x2*y1);
quiver(xc,yc,x(4)-xc,y(4)-yc,0)
quiver(xc,yc,x(1)-xc,y(1)-yc,0)
x1=x(4)-xc; y1=y(4)-yc; x2=x(1)-xc; y2=y(1)-yc;

A4=0.5*abs(x1*y2-x2*y1);
[A A1 A2 A3 A4]
sum([A1 A2 A3 A4])
axis image; axis off
title('Daeun Lee')
