% Illustration of Second-Order LTI Free Response

% Model Parameters 
wn = 1*2*pi;  % undamped nat'l freq. [rad/s]
zeta = 0.1;   % damping ratio [n/a]cd 

% Initial condition
y0 = 1;  %  y(t=0)
v0 = 0;

% Describe a vector of times for the solution
dt = 0.001;   % Time step [s]
Tend = 10;  % End of time horizon for simulation [s]
tt = 0:dt:Tend;  

% Mistaken Solution to DE
wd = wn*sqrt(1-zeta^2);
Yeqn = y0*exp(-zeta*wn*tt).*cos(wd*tt);

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
ylabel('y(t) [n/a]')
legend('Mistaken','Corrected')
title('Free Response of Second-Order Model')
