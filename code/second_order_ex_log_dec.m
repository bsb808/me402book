% Illustration of Second-Order LTI Time Response
% ME 402

clear;

% Model Parameters 
% One way to model this is with a differential equation for a
% mass-spring-damper: m*ddot(y)+b*dot(y)+k*y = F(t)
m = 0.1;      % mass [kg]
b = 0.01;      % linear damping [Ns/m]
k = 1;         % stiffness [N/m]

% Initial condition
y0 = 0.01;  % initial displacement [m]
% Assume initial velocity is zero

% Describe a vector of times for the simulation
dt = 0.01;   % Time step [s]
Tend = 30;  % End of time horizon for simulation [s]
tt = 0:dt:Tend;  

% Analytical Solution
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
wn = 2*pi;
zeta = 0.02;

Yeqn = y0*exp(-zeta*wn*tt).*cos(wn*sqrt(1-zeta^2)*tt);

% Numerical Simulation Solution
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initial Conditions
Y(1) = y0;   % Initial position [m]
Ydot(1) = 0; % Initial velocity [m/s]
Yddot(1) = 0;


% Euler Integration
for ii = 2:length(tt)
    Yddot(ii) = (1/m)*(-b*Ydot(ii-1)-k*Y(ii-1));  % acceleration
    Ydot(ii) = Ydot(ii-1)+Yddot(ii)*dt;
    Y(ii) = Y(ii-1)+Ydot(ii)*dt;
end


% Plot the Results
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf()
plot(tt,Yeqn,'b:')
hold on
env = y0*exp(-zeta*wn*tt);
plot(tt,env,'k')
plot(tt,-env,'k')
legend('Response','Exp. Envelope')
xlabel('Time [sec]')
ylabel('Response [n/a]')
title('Simulation of Second-Order System')

figure(2)
plot(tt,log(env),'k','linewidth',2)
grid on
xlabel('Time [sec]')
ylabel('Nat''l Log (ln()) of Envelope [n/a]')
title('Envelope of the Second-Order Free Response')

