% Illustration of Euler method for solving a 1st order ODE
% Given the ODE \dot{y} + (1/tau) y = F and initial conditions
% Find a solution to the ODE - y(t)
clear

% Define the model parameters as constants
m = 800;       % mass [kg]
b = 225;      % linear drag [Ns/m]
Fstep = 6075;  % amplitude of step force input [N]

% Initial conditions
y0 = 0;    % y(t=0)

% Numeric soution setup
dt = 0.1;  % define the time step in seconds
Tend = 20;
N = round(Tend/dt);  % number of time steps

v(1) = y0;  % the init. cond. as the first element in a vector
t(1) = 0;   % start a vector to record the time in seconds
for k = 1:N-1
    vdot = -b/m*v(k)+1/m*Fstep;   % the expresion for the derivative
    v(k+1) = v(k) + vdot*dt;  % append a new element to the vector
    t(k+1) = k*dt;            % record the time value
end

% Plot the results
figure(1);
clf();
plot(t,v/0.447,'.-')
xlabel('Time [s]')
ylabel('Speed [mph]')
title('Cruise Control')
grid on





