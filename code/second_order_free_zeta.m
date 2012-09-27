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

zetas = [0.0, 0.01 , 0.1, 0.5, 0.9];
% Plot the Results
ltypes = {'r-','g-','b-','r--','g--','b--'};
figure(1); clf()
lstr = {}
for ii = 1:length(zetas)
    zeta = zetas(ii)
    % Solution to DE
    wd = wn*sqrt(1-zeta^2);
    Yeqn = y0*exp(-zeta*wn*tt).*cos(wd*tt);
    plot(tt,Yeqn,ltypes{ii})
    hold on
    lstr{ii} = sprintf('%4.2f',zeta);
end

legend(lstr)
xlabel('Time [sec]')
ylabel('y(t) [n/a]')
title('Free Response of Second-Order Model')
