%Tyler Matthews 
%HW2 HEV-P1

close all; %close figures
clc; %clear console

%initial conditions
mile = 5280;
x = 0:1:mile*3;
fx = zeros(1, length(x));

%i
%calculate
for N=1 : length(x)
    fx(N) = 4.1 * (x(N)^0.5);
end

%plot
figure;
plot(fx, x);
title('Road Profile');
xlabel('x');
ylabel('fx');

%ii
dfx = (4.1/2) * ((x(2*mile))^-0.5); %take derivative fx/dx
beta = atan(dfx) %beta equals arctangent of dfx


%iii
percent_grade = tan(beta)*100

%vi
syms x
T = abs(sqrt(1 + (2.05/sqrt(x))^2)); %absolute value of (1 + dfx^2)^0.5
M = int(T,[0 3*mile]); % integral of above function from 0 to 15840
Tx = double(M(1)) %Tangential Road Length