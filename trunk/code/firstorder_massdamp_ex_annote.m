% Illustration of First-Order LTI Step Response
% ME 402

clear;

% System Parameters 
m = 15;       % mass [kg]
b = 10;      % linear drag [Ns/m]
Fstep = 100;  % amplitude of step force input


% Simulation Solution
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initial Conditions
V(1) = 0;  % Initial velocity [m/s]

% Describe a vector of times for the simulation
dt = 0.1;   % Time step [s]
Tend = 10;  % End of time horizon for simulation [s]
tt = 0:dt:Tend;  

% Euler Integration
for ii = 2:length(tt)
    Vdot = -b/m*V(ii-1)+Fstep/m;
    V(ii) = V(ii-1)+Vdot*dt;
end

% Analytical Solution
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tau = m/b;
% Note that MATLAB can deal with the tt vector in this equation
% and output a vector of velcocities.
Veqn = Fstep/b*(1-exp(-tt/tau));  


figure(1)
clf()
plot(tt,V,'r.')
hold on
plot(tt,Veqn,'b-')
xlabel('Time [sec]')
ylabel('Velocity [m/s]')
title('Numerical Simulation of First-Order System')

hold on
plot([tt(1) tt(end)],Fstep/b*[1 1],'r:')
grid on
legend('Numerical','Analytical','SteadyState')

figure(2)
clf()
plot(tt,abs(V-Veqn),'.')