
clear

% Define the model parameters as constants
m = 800;       % mass [kg]
b = 225;      % linear drag [Ns/m]

% Control Gains
Kp = 1000;
% Control Reference
r = 60*0.447;

% Initial conditions
y0 = 0;    % y(t=0)

% Numeric soution setup
dt = 0.1;  % define the time step in seconds
Tend = 20;
N = round(Tend/dt);  % number of time steps

v(1) = y0;  % the init. cond. as the first element in a vector
t(1) = 0;   % start a vector to record the time in seconds
for k = 1:N-1
    e = r-v(k);
    u(k) = Kp*e;
    vdot = -b/m*v(k)+1/m*u(k);   % the expresion for the derivative
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

figure(2);
clf();
plot(t(1:end-1),u,'r');
xlabel('Time [s]')
ylabel('Control Force [N]');
title('Control Effort')




