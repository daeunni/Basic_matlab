% subplot 
clear; 
f=@(a,x) sin(a*x);
x=linspace(0,pi,50);
figure(1); clf
sgtitle('Daeun Lee')
subplot(3,1,1)
plot(x,f(2,x),'g.:')
title('subplot 1')
axis image
subplot(3,1,2)
plot(x,f(3,x),'c*-.')
title('subplot 2')
axis image
subplot(3,1,3)
plot(x,f(4,x),'ks--')
title('subplot 3')
axis image

%  xlabel & y label & legend 지정하기 
clear; 
f=@(a,x) sin(a*x);
x=linspace(0,pi,50);
figure(1); clf

plot(x,f(2,x),'g.:'); hold on
plot(x,f(3,x),'c*-.')
plot(x,f(4,x),'ks--')
title('Daeun Lee')
xlabel('x')
ylabel('Korea University')
legend('sin(2x)', 'sin(3x)', 'sin(4x)')
axis image 

% == parameterize circle (x^2+y^2=1, x=cos세타, y=sin세타) 

clear; 
t = linspace(0, 2*pi, 100)  % 100개의 point -> 세타값
figure(1); clf

% default (axis image 없을 때) 
subplot(2, 1, 1)
x = cos(t)
y = sin(t)
plot(x, y, 'ro'); 
title('Daeun Lee')
%  xlabel & y label & legend 지정하기 
xlabel('x')
ylabel('y')

% exact ratio
subplot(2, 1, 2)
x = cos(t)
y = sin(t)
plot(x, y, 'ro'); 
title('Daeun Lee')
xlabel('x')
ylabel('y')
grid on         % 그리드 추가 
axis image    % 해제하면 타원이 되고, axis image는 orginal ratio가 되도록 


% == parameterize circle (x^2+y^2=1, x=cos세타, y=sin세타) 
clear; 
t = linspace(0, 2*pi, 100)  % 100개의 point -> 세타값

a = 100 ; b = 1; 
figure(1); clf

% default (axis image 없을 때) 
subplot(2, 1, 1)
x = a * cos(t)
y = b * sin(t)
plot(x, y, 'bo'); 
title('Daeun Lee')
xlabel('x')
ylabel('y')
grid
% exact ratio
subplot(2, 1, 2)
plot(x, y, 'bo'); 
title('Daeun Lee')
xlabel('x'); ylabel('y')
grid on         % 그리드 추가 
axis image    % 해제하면 타원이 되고, axis image는 orginal ratio가 되도록 

% 이상한 토네이도
clear; 
figure(1); clf
t = linspace(0, 10*pi, 1000)
x = t.*cos(t) ; y=t.*sin(t) ; z=t.^2;
plot3(x,y,z, 'bo') ; 

grid on 
box on 
title('Daeun Lee')

