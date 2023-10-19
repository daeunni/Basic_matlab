%% ABCD 영역 넓이 구하기? : 우리는 항상 최적의 해를 얻을 수 있음 
clear; clf; hold on
a=3; b=2; 
A=a*b;    % axb = -bxa
x=[0 a a 0]; y=[0 0 b b];        % point is oriented -> counter-clockwise distribution(random X) 
plot([x 0],[y 0],'bo-')

xs = 0 ; yc = 0 ;   % xs, yc 위치에 상관없이 최적의 해를 얻음 -> 뭔 소리지
xc=a*rand(1); yc=-b+b*rand(1);
plot(xc,yc,'ro')

quiver(xc,yc,x(1)-xc,y(1)-yc,0); quiver(xc,yc,x(2)-xc,y(2)-yc,0)
x1=x(1)-xc; y1=y(1)-yc; x2=x(2)-xc; y2=y(2)-yc;
A1=0.5*(x1*y2-x2*y1);       % abs 지우면 A1은 항상 음수가 됨(-> axb는 음수가 됨. clock-wise orientation은 a에서 시작하기 때문) ex) .0000   -0.2826    0.5558    3.2826    2.4442
% -> 아래 있는 삼각형의 넓이가 (직사각형 밖에 있는 부분) 음수가 된다. 

quiver(xc,yc,x(2)-xc,y(2)-yc,0); quiver(xc,yc,x(3)-xc,y(3)-yc,0)
x1=x(2)-xc; y1=y(2)-yc; x2=x(3)-xc; y2=y(3)-yc;
A2=0.5*(x1*y2-x2*y1);
quiver(xc,yc,x(3)-xc,y(3)-yc,0); quiver(xc,yc,x(4)-xc,y(4)-yc,0)

x1=x(3)-xc; y1=y(3)-yc; x2=x(4)-xc; y2=y(4)-yc;
A3=0.5*(x1*y2-x2*y1);

quiver(xc,yc,x(4)-xc,y(4)-yc,0)
quiver(xc,yc,x(1)-xc,y(1)-yc,0)
x1=x(4)-xc; y1=y(4)-yc; x2=x(1)-xc; y2=y(1)-yc;

A4=0.5*abs(x1*y2-x2*y1);
[A A1 A2 A3 A4]
sum([A1 A2 A3 A4])
axis image; axis off
title('Daeun Lee')

%% 위 예시를 general한 예시에 응용해보기 
clear; format long; clf; 
nx=505; ny=nx;  % nx : point 개수 -> 많을 수록 촘촘해짐 

x=linspace(-1, 1, nx); 
y=linspace(-1, 1, ny); 
u(1:nx,1:ny)=0;      % initialize from zero 
[X,Y]=meshgrid(x,y);

% radius가 0.7인 circle을 만드는 함수 
for i=1:nx
for j=1:ny
    u(i,j)=0.7-sqrt(x(i)^2+y(j)^2);
end
end

% plot 1 
subplot(1,2,1); 
colormap([0 0 0]); mesh(X,Y,u');    % u' : transpose
hold on;
mesh(X, Y, 0*u') ;      % 평면 
pbaspect([1 1 1]);

% plot 2
subplot(1,2,2);
[c,ch]=contour(x,y,u',[0 0],'k','LineWidth',1.2); hold on     % contour
m=c(2,1); plot(c(1,2:m+1),c(2,2:m+1),'ko'); axis image
xx=c(1,2:m+1); yy=c(2,2:m+1);

s=0;
for i=1:m-1      % m개의 삼각형
s=s + xx(i)*yy(i+1)-xx(i+1)*yy(i);
end

s = s + xx(i)*yy(i+1)-xx(i+1)*yy(i)   % 위 반복문 인덱스 문제로 마지막 부분을 따로 이렇게 (첫번째 point값으로) 더해줘야 함
% -> 근데 첫번째 point랑 같아지므로 본 예시에서는 안넣어도 상관없음. 
% 근데 일반적으로는 넣어야 함 

A=0.5*abs(s); 

[A pi*0.7^2]

title('Daeun Lee')

% 우리는 두개의 점만 있으면 언제든 0에서 시작하는 삼각형을 만들 수 있다. 
% 어떤 polygon이 있을 때(e.g. 오각형) M각형이면 삼각형의 개수는 M개
% -> 결론 : numerical one은 good approximation이다? 하 뭔 소리지

%% 스누피 그리기.. 
clear; format long; clf; 

B=[487 461; 514 459; 528 468; 516 486; 502 508;
489 538; 527 544; 550 522; 565 497; 588 472;
600 441; 595 417; 575 397; 543 396; 514 410;
491 432; 495 398; 491 362; 472 333; 435 315;
398 309; 366 303; 352 281; 385 272; 407 280;
408 298; 442 302; 445 284; 472 284; 480 259;
462 249; 471 227; 458 216; 444 219; 441 208;
422 207; 411 225; 383 228; 357 226; 356 198;
365 181; 395 204; 383 167; 369 155; 359 118;
382 122; 389 150; 423 146; 425 102; 394 57;
350 36; 301 39; 291 64; 309 86; 324 94;
314 110; 275 120; 270 98; 271 50; 234 32;
190 49; 157 91; 164 150; 206 157; 230 148;
226 187; 243 218; 256 237; 230 253; 220 237;
197 252; 194 269; 183 287; 197 305; 192 322;
227 321; 252 326; 252 300; 291 289; 296 310;
264 331; 212 360; 184 399; 191 467; 250 503;
307 501; 355 519; 340 558; 387 594; 428 598;
453 574; 418 549; 386 543; 397 522; 439 511;
473 487; 487 459];

m = length(B) ; 
xx = B(:, 1) ; 
yy = B(:, 2) ; 
plot(xx, yy, 'ko-') ; axis image 
s = xx(m)*yy(1)-xx(1)*yy(m);

for i=1:m-1      % m개의 삼각형
s=s + xx(i)*yy(i+1)-xx(i+1)*yy(i);
end

A=0.5*abs(s); 

title('Daeun Lee')

