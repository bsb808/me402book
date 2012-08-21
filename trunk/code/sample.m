
dt = 0.1;  
tend = 3;
tt = 0:dt:tend;
ttt = 0:dt/10:tend;
fhz = 1;
w = fhz*2*pi;
yyy = sin(w*ttt);
yy = sin(w*tt);

figure(1)
clf
plot(ttt,yyy)
hold on
plot(tt,yy,'ko','markerfacecolor','k')
xlabel('Time [s]')
ylabel('Voltage [V]')
legend('Analog','Digital')
