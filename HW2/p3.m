%Tyler Matthews
%P3

clc; %Clear Console
close all; %Close Figures

%Initial Conditions
V_mass = 1800;
P_mass = 80;
c0 = 0.01;
rwh = 0.3305;
cad = 0.45;
af = 2.5;
pmax = 145;
g = 9.8;

%These values weren't given in the problem so they were grabbed from
%problem 2.3
p = 1.16;
c1 = 1.75*10^-6;
cd = 0.2;

beta = atand(.5/100);
total_mass = V_mass + P_mass;

%a)
syms v;
dvdt= (pmax/v) - (g*sin(beta)) - ((p/2)*cd*af*v^2) - (m*g*c0 + m*g*c1*v^2)

%b)
velocity_10s = int(dvdt, v, 0, 10)

%c)
beta = atand(4/100);
dvdt= (pmax/v) - (g*sin(beta)) - ((p/2)*cd*af*v^2) - (m*g*c0 + m*g*c1*v^2)
velocity_12s = velocity_10s + int(dvdt, v, 0, 2)
