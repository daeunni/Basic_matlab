% 3개의 점 찍기 
clear; clf ; hold on 
x = rand(1,3) ; 
y = rand(1,3) ; 
plot(x, y, 'bo')
return 
a = [x(2)-x(1) y(2)-y(1)];
b = [x(3)-x(1) y(3)-y(1)];

% quiver? 화살표.. 
clear ; clf ; hold on 
x = rand(1,3);
y = rand(1,3);
plot(x, y,'bo')

a = [x(2)-x(1) y(2)-y(1)];
b = [x(3)-x(1) y(3)-y(1)];
quiver(x(1), y(1), a(1), a(2), 0);
quiver(x(1), y(1), b(1), b(2), 0)

A = 0.5 * abs(a(1)*b(2) - a(2)*b(1))
title('Daeun Lee')

% 네모랑 화살표 같이 그리기 
clear; clf ; hold on 
a = 3 ; b = 2; 
% 네모 그리기 
x = [0 a a 0] ;
y = [0 0 b b] ; 
plot(x, y, 'bo')

% 화살표 같이 그리기 
xc = a * rand(1) ; yc = b * rand(1); 
plot(xc, yc, 'ro')
quiver(xc, yc, x(1)-xc, y(1)-yc, 0)
quiver(xc, yc, x(2)-xc, y(2)-yc, 0)

x1 = x(1) - xc ; y1 = y(1) - yc ; 
x2 = x(2) - xc ; y2 = y(2) - yc ; 
A1 = 0.5 * abs(x1 * y2 - x2 * y1)

axis image 
title('Daeun Lee')

% 그 안에 화살표 그리기 
clear; clf ; hold on 
a = 3 ; b = 2; A = a*b ; 
x = [0 a a 0] ;
y = [0 0 b b] ; 
plot(x, y, 'bo')
xc = a * rand(1) ; yc = b * rand(1); 
plot(xc, yc, 'ro')

quiver(xc, yc, x(1)-xc, y(1)-yc, 0)
quiver(xc, yc, x(2)-xc, y(2)-yc, 0)
x1 = x(1) - xc ; y1 = y(1) - yc ; 
x2 = x(2) - xc ; y2 = y(2) - yc ; 
A1 = 0.5 * abs(x1 * y2 - x2 * y1);

quiver(xc, yc, x(2)-xc, y(2)-yc, 0)
quiver(xc, yc, x(3)-xc, y(3)-yc, 0)
x1 = x(2) - xc ; y1 = y(2) - yc ; 
x2 = x(3) - xc ; y2 = y(3) - yc ; 
A2 = 0.5 * abs(x1 * y2 - x2 * y1);

quiver(xc, yc, x(3)-xc, y(3)-yc, 0)
quiver(xc, yc, x(4)-xc, y(4)-yc, 0)
x1 = x(3) - xc ; y1 = y(3) - yc ; 
x2 = x(4) - xc ; y2 = y(4) - yc ; 
A3 = 0.5 * abs(x1 * y2 - x2 * y1);

quiver(xc, yc, x(4)-xc, y(4)-yc, 0)
quiver(xc, yc, x(1)-xc, y(1)-yc, 0)
x1 = x(4) - xc ; y1 = y(4) - yc ; 
x2 = x(1) - xc ; y2 = y(1) - yc ; 
A4 = 0.5 * abs(x1 * y2 - x2 * y1);

[A A1 A2 A3 A4]
sum([A1 A2 A3 A4])       % 6이 되어야 함 

axis image 
title('Daeun Lee')
