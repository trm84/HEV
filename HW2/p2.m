%Tyler Matthews
%P2.3

clc; %clear console
close all; %close figures

%Initial Conditions
m = 262;
cd = 0.2;
af = 2;
c0 = 0.009;
c1 = 1.75*10^-6;
p = 1.16;
g = 9.81;
grade = 15;

dy = grade/100;
Beta = atand(grade/100);
Fgxt = m*g*sin(Beta);

%ai
Ftr = Fgxt

%aii
Ftrmin = Fgxt-m*g*c0

%bi
v = 0:10:180; %Timestep

%Calculate
Beta = atand(-12/100);
Fgxt = m*g*sin(Beta);
Fad = (p/2)*cd*af*(v.^2);
Froll = m*g*(c0+c1*(v.^2));

%Plot
figure;
plot(v, Fgxt, 'd', v, Fad, v, Froll);
title('F_g_x_t, F_a_d, F_r_o_l_l Vs. V');
xlabel('Velocity');
ylabel('Force');

%bii
%Calculate
Ftr = Fgxt+Fad+Froll

%Plot
figure;
plot(v,Ftr);
xlabel('Velocity');
ylabel('Force');
title('F_t_r vs V');
