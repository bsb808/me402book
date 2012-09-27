% Illustration of First-Order LTI Step Response
% ME 402

clear;

% System Parameters 
m = 15;       % mass [kg]
b = 10;      % linear drag [Ns/m]
Fstep = 100;  % amplitude of step force input [N]

% Describe a vector of times for the simulation
dt = 0.1;   % Time step [s]
Tend = 10;  % End of time horizon for simulation [s]
tt = 0:dt:Tend;  

% Analytical Solution
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tau = m/b;
% Note that MATLAB can deal with the tt vector in this equation
% and output a vector of velcocities.
Veqn = Fstep/b*(1-exp(-tt/tau));  


figure(1)
clf()
plot(tt,Veqn,'b.')
xlabel('Time [sec]')  % Always label the axes and include units!
ylabel('Velocity [m/s]')
title('Numerical Simulation of First-Order System')
grid on

