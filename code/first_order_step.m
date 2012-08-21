% Example of time-response of first-order system 

% First Order Model: dy/dt = 1/tau*y = f(t)
tau = 3.14159;  % time 


dt = 0.1;   % Time step [s]
Tend = 30;  % End of time horizon for simulation [s]
tt = 0:dt:Tend;
Tinf = 1;  % Ambient temperature [normalized]
T0=0;      % Initial temperature [normalized]
Temp = Tinf+(T0-Tinf)*exp(-tt/tau);
plot(tt,Temp,'k','linewidth',2)
legend('run3','run4','63.2%','Model')


