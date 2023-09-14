% 주사위게임..? 
clear  
rng(1) % 1 = seed number -> pseudo random number (dependent 한 number..) 
% seed number가 초항을 결정함 

x=rand(1) ;    % generate random number 

if x <1 / 6
    number = 1
elseif x<2/6
    number = 2
elseif x<3/6
    number=3
elseif x<4/6
    number=4
elseif x<5/6
    number=5
elseif x<6/6
    number=6
end
% linspace 
clear
format long % default : format short -> show more digit 

N=55;
x = linspace(0, pi, N)   %interval size : 1

% 두 결과는 같음 
x(2) - x(1)
x(3) - x(2)

pi/(N-1)

% function 
clear
f = @(x) 2*sqrt(x) + x.^(x-1) ;     % f=@(x) : f of f
x = linspace(0.01, 2, 100) ;          % x = vector 
plot(x, f(x))

clear
f = @(a, x) sin(a*x);  % a = interval 
x = linspace(0, pi, 100) ;         
plot(x, f(9, x), 'o-')

axis image

% subplot 
clear ; clf
f = @(a, x) sin(a*x);  % a = interval 
x = linspace(0, pi, 100) ;    

figure(1); clf
sgtitle('subplot from 1 to 6')

subplot(2,3,1)
plot(x, f(9, x), 'ro-')
title('subplot 1')
axis image 

subplot(2,3,2)
plot(x, f(2, x), 'bo-')
title('subplot 2')
axis image


subplot(2,3,3)
plot(x, f(4, x), 'mo-')
title('subplot 3')
axis image

subplot(2,3,4)
plot(x, f(6, x), 'yo-')
title('subplot 1')
axis image 

subplot(2,3,5)
plot(x, f(6, x), 'bo-')
title('subplot 2')
axis image


subplot(2,3,6)
plot(x, f(5, x), 'mo-')
title('subplot 3')
axis image
