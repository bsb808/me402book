% Illustration of Second-Order LTI Free Response

% Model Parameters 
wn = 32.6;  % undamped nat'l freq. [rad/s]
zeta = 0.02;   % damping ratio [n/a]cd 

% Initial condition
y0 = 0.01;  %  y(t=0)
v0 = 0;

% Describe a vector of times for the solution
dt = 0.001;   % Time step [s]
Tend = 5;  % End of time horizon for simulation [s]
tt = 0:dt:Tend;  

% Solution to DE
wd = wn*sqrt(1-zeta^2);
C = sqrt(y0^2+((v0+zeta*wn*y0)/(wd))^2)
phi = atan((v0+zeta*wn*y0)/(wd*y0))
Yeqn2 = C*exp(-zeta*wn*tt).*cos(wd*tt-phi);

% Plot the Results
figure(1); clf()
%plot(tt,Yeqn,'b-')
%hold on
plot(tt,Yeqn2,'r-')
xlabel('Time [sec]')
ylabel('y(t) [cm]')
title(sprintf('Free Response: wn=%5.2f rad/s, f_n=%5.2f zeta=%5.3f',wn,wn/(2*pi),zeta))
