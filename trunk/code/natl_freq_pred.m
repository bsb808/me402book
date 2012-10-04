% Predict natural frequency based on Blevins first-mode
D = 2.7;             % g/cm^3
D = D/1000*(100^3);  % kg/m^3
E = 68.9e9;          % N/m^2
t = 1.59e-3;         % m
W = 2.54e-2;         % m
L = 0.5;             % m

I = 1/12*W*t^3;      % m^4
rho = D*(t*W);       % kg/m
wn = (1.875^2)/(L^2)*sqrt(E*I/rho)   % rad/s
fn = wn/(2*pi)                   % Hz