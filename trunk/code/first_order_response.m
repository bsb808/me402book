% Example of time-response of first-order system 
% First Order Model: dy/dt = 1/tau*y = f(t)
tau = 2;  % time constant [s]
% A vector of time values for evaluating the response
t = 0:0.1:20;
% Step Response: f(t)=A*mu(t) , y(0)=0
A = 50;
% Evaluate the solution at each value of t
y = A*tau*(1-exp(-t/tau)); 
% Plot
figure(1); clf();
plot(t,y,'-')
xlabel('Time [s]')
ylabel('Response y(t) [n/a]')
title('First-Order Response')
grid on
ylim([0 max(y)*1.1])

