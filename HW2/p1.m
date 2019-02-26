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
Tx = 15863.3 %Take integral of (1 + dfx^2)^0.2 from 0 to 15840