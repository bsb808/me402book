% Illustration of First-Order LTI Step Response
% ME 402

clear;

% System Parameters 
m = 750;       % mass [kg]
b = 150;      % linear drag [Ns/m]
Fstep = 1000;  % amplitude of step force input [N]


% Analytical Solution
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dt = 0.1;  % time step [s]
tend = 10;  % final time [s]
tt = 0:dt:tend;
tau = m/b;
% Note that MATLAB can deal with the tt vector in this equation
% and output a vector of velcocities.
Veqn = Fstep/b*(1-exp(-tt/tau));  


figure(1)
clf()
plot(tt,Veqn,'b-','linewidth',2)
xlabel('Time [sec]')  % Always label the axes and include units!
ylabel('Velocity [m/s]')
title('Step Response of First-Order Model')
grid on
