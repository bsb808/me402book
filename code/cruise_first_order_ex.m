% First-Order LTI System
%Cruise Control Example

clear;
close all;

m = 100; % kg
b = 50; % Ns/m

% Make and LTI system
num = 1/m;
den = [1 b/m];
sys1 = tf(num,den);

% now you can type 'sys1' to see the transfer funtion
sys1

% Look at the time response
figure(1)
step(500*sys1)

% Look at the freq. response (low pass filter)
figure(2);
bode(sys1)

% Where are the poles and zeros?
figure(3);
pzmap(sys1);

% use lsim for an arbitrary input
ttime = linspace(0,4,4000);
in = [zeros(1,1000) ones(1,1000) -1*ones(1,1000) zeros(1,1000)];

out = lsim(sys1,in,ttime);
figure(4);
subplot(211)
plot(ttime,in);
ylabel('IN (N)');
subplot(212)
plot(ttime,out);
ylabel('Out (m/s)');
xlabel('Time (s)');


