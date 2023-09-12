clear; clf   % clf : clear figure 
u(1)=1;
u(2)=1;
SI = 2019150471;      % student id에 가깝게 만들기 

flag=1;    % 비효율적인걸 막기 위함 
while flag==1
u(i) = u(i-1) + u(i-2) ;   % 피보나치 

if u(i) >= SI   % 조건 추가 
    flag=0 ; 
end

i=i+1;    % index 
end 

% SI와 가까운 피보나치값 찾기 
if abs(u(i-1) - SI) < abs(u(i-2)-SI)    % 마지막 함수값에서 마지막-1 함수값 차이(거리)
    u(i-1)
else 
    u(i-2)
end 

% plotting 
plot(u, 'o-'); grid on  
plot(0*u + SI, 'o-');     % initialize 0 -> all element student id인 벡터 만들기 
title('Daeun Lee')
