% Illustration of Second-Order LTI Free Response

% Model Parameters 
wn = 1*2*pi;  % undamped nat'l freq. [rad/s]
zeta = 0.1;   % damping ratio [n/a]cd 

% Initial condition
y0 = 1;  %  y(t=0)

% Describe a vector of times for the solution
dt = 0.001;   % Time step [s]
Tend = 10;  % End of time horizon for simulation [s]
tt = 0:dt:Tend;  

% Solution to DE
wd = wn*sqrt(1-zeta^2);
Yeqn = y0*exp(-zeta*wn*tt).*cos(wd*tt);

% Plot the Results
figure(1); clf()
plot(tt,Yeqn,'b-')
xlabel('Time [sec]')
ylabel('y(t) [n/a]')
title('Free Response of Second-Order Model')
