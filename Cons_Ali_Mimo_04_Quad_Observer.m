clear
clc

n = 12;
m = 12;

k1 = 1;
k2 = 1;
R = 1e+0*eye(m);
Q = 1e-2*eye(n);
B = 1e0*eye(n);

BBT_inv = ((B'*B)^(-1))*B';

%% 
gamma_1 = 1e+1*diag([1e-3*ones(6,1);1e-3*ones(2,1);1e-0*ones(4,1)]);
rho_1 = 1e-3;
gamma_0 = 1e-0*diag([1e-3*ones(6,1);1e-3*ones(2,1);1e-0*ones(4,1)]); 
rho_0 = 1e-3;

%% Quad

Kf = 1.0e-5; % 6.11e-8; % each motor force constant (scalar)
Kt = 0.0435 * Kf; %1.5e-9; % each motor torque constant (scalar)
Ka = 0.01; %*diag([1 1 1],0); % Aerodynamcs torque constant (matrix)
Kd = 0.01; %*diag([1 1 1],0); % Aerodynamics force constant (matrix)

L = 0.45; % Quadrotor each Arm Length (scalar)
J = 1.2416e-3 * diag([1 1 2]); % Polar moment of inertia for the quadrotor (matrix)
M = 2.95; % Quadrotor total Mass (scalar)
g = 9.81;  % the gravity acceleration = 9.81 m/s2.

% RM = [1 1 1 1;
%     -1e-1 0 1e-1 0;
%     0 -1e-1 0 1e-1;
%     1e-2 -1e-2 1e-2 -1e-2];

alpha = 1.0e-5;
beta = 1;
L1 = 1;
RM = alpha*[1 1 1 1;
    -L1 0 L1 0;
    0 -L1 0 L1;
    beta -beta beta -beta];
RM_1 = RM^(-1);

run RECT_trajectory_generation.m

H_ob = 1*eye(n);
R_nu = 1*eye(n);

Var = 0.1;

load Filter_a1.mat
load Filter_b1.mat
