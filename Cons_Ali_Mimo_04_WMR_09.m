clear
clc

n = 4;
m = 4;
nd = 2;

k1 = 1;
k2 = 1;
R = 1*eye(m);
Q = 1e-1*eye(n);
B = 1*eye(n);

BBT_inv = ((B'*B)^(-1))*B';

%% 
gamma_1 = 1e2*diag([1e-3*ones(2,1);1e0*ones(2,1)]);
rho_1 = 1e-3;
gamma_0 = 1e-1*diag([1e-3*ones(2,1);1e0*ones(2,1)]); 
rho_0 = 1e-4;

Thresh = 1e-5;

%% WMR
M = 1;
J = 0.01;
Cv = 0.1;
Cw = 0.1;
T0 = 10;
v0 = 10;
R0 = 0.1;
L0 = 0.1;

RM = (1/R0) * ...
    [1 1;
    L0 -L0];
RM_1 = RM^(-1);

run RECT_trajectory_generation.m

H_ob = eye(n);
R_nu = 1*eye(n);
