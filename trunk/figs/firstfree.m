tau=1;             % time constant
t = 0:0.01:7;      % time vector [s]
y = exp(-t/tau);   % free response
figure(1)
plot(t,y)
xlabel('Time/\tau [n/a]')
ylabel('y/y_o [n/a]')
grid

