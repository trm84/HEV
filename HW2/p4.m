%Tyler Matthews 
%HW2 HEV-P4

close all; %Close Figures
clc; %Clear Console

%Initial conditions
C0 = 0.005;
C1 = 1.3*(10^-6);
Cd = 0.3; 
Af = 1.8;
p = 1.18;
gravity = 9.81; 
mass = 700;  

t = 0:1:10; %time step

x = 0.10*t.^3;  %distance
v = 0.3*t.^2;  %velocity dx/dt
a = 0.6*t; %acceleration dv/dt

%i
%calcs
F_tr = (mass*a) + ((p/2)*Cd*Af*(v.^2)) + ((mass*gravity)*(C0 + (C1*v.^2)));
%plots
figure;
plot(t, F_tr)
ylabel('F_tr');
xlabel('t');
title('F_tr vs t');

%ii
%calcs
P_tr = F_tr.* v;
%plot
figure;
plot(t, P_tr)
ylabel('P_tr');
xlabel('t');
title('P_tr vs t');

%iii
%calcs
Fad_Froll = F_tr - (mass*a);
Energy_loss = v.*Fad_Froll;
%plot
figure;
plot(t, Energy_loss)
xlabel('t');
ylabel('Energy Loss');
title('Energy Loss vs t');