% Illustration of First-Order LTI Step Response

% Clear all the variables in the workspace
clear;

% System Parameters 
m = 800;       % mass [kg]
b = 225;      % linear drag [Ns/m]
Fstep = 15000;  % amplitude of step force input [N]

% Describe a vector of times for the simulation
dt = 0.1;   % Time step [s]
Tend = 15;  % End of time horizon for simulation [s]
tt = 0:dt:Tend;  

% Analytical Solution
tau = m/b;
% Note that MATLAB can deal with the tt vector in this equation
% and output a vector of velcocities.
Veqn = Fstep/b*(1-exp(-tt/tau));  

% Plot the results
figure(1)
clf()
plot(tt,Veqn/0.447,'b.')
xlabel('Time [sec]')  % Always label the axes and include units!
ylabel('Velocity [mph]')
title('First-Order Step Response')
grid on

