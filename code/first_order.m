% Illustration of how to find the time constant from experimental data.
%
% This is just an illustrative example.  It is important that you try to do
% this as much as possible on your own. 
% ME 402, Brian Bingham

% Assumes you have previously imported the data from two different heating
% runs and saved that data as MATLAB data files (*.mat)

%%
% Load the data and rename the variables so that they are unique
load('lab1_run3')
tt3 = data(:,1);
temp3 = data(:,2);

% We are going to normalize the data in both time and temperature so that
% it is eaiser to see the time-constant.
t3start = 8.24;  % This is the time when the probe was inserted.  Identified in the plot using ginput
T3init = 27.35;  % Initial temperature.  Identified using ginput
T3inf = 98.0;    % Final temperature
% Normalize the time so that the step starts at t=0
tt3 = tt3-t3start;
% Normalize time so that it goes form 0 to 1.0
temp3 = (temp3-T3init)/(T3inf-T3init);

%%
% Load the send run of data and rename the variables again
load('lab1_run4')
tt4 = data(:,1);
temp4 = data(:,2);
% Same normalization as above - actual values identified using ginput()
t4start = 2.36; 
T4init = 40.6;
T4inf = 92.74;
tt4 = tt4-t4start;
temp4 = (temp4-T4init)/(T4inf-T4init);

% Introduce an offset so that both runs start in the same place in the
% graph
figure(2);
clf();
plot(tt3,temp3,'r.-')
hold on
plot(tt4,temp4,'b.-')
% draw a line at 63.2%
plot([-5 30],0.632*[1 1],'r:')
ylabel('Temperature [ ^\circ C ]')
xlabel('Time [seconds]')
title('Temperature Time Response, Run N')
grid on;
legend('run3','run4','63.2%')

%% 
% Now add the solution to the analytical model
% Model
tau = 4.3;  % time-constant from the model estimate [s]
dt = 0.1;   % Time step [s]
Tend = 30;  % End of time horizon for simulation [s]
tt = 0:dt:Tend;
Tinf = 1;  % Ambient temperature [normalized]
T0=0;      % Initial temperature [normalized]
Temp = Tinf+(T0-Tinf)*exp(-tt/tau);
plot(tt,Temp,'k','linewidth',2)
legend('run3','run4','63.2%','Model')


