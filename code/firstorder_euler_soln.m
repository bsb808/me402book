% Illustration of Euler method for solving a 1st order ODE
% Given the ODE \dot{y} + (1/tau) y = F and initial conditions
% Find a solution to the ODE - y(t)
clear

% Define the model parameters as constants
tau = 10;  % time constant in seconds
F = 1.0;   % forcing function is a constant - same units as y(t)

% Initial conditions
y0 = 0;    % y(t=0)

% Numeric soution setup
dt = 25;  % define the time step in seconds
N = 20;  % number of time steps

y(1) = y0;  % the init. cond. as the first element in a vector
t(1) = 0;   % start a vector to record the time in seconds
for k = 1:N-1
    ydot = -1/tau*y(k)+F;   % the expresion for the derivative
    y(k+1) = y(k) + ydot*dt;  % append a new element to the vector
    t(k+1) = k*dt;            % record the time value
end

% Plot the results
figure(1);
clf();
plot(t,y,'.-')
xlabel('Time [s]')
ylabel('y(t)')
title('Numerical Solution (Euler Method) for First-Order ODE')
grid on





