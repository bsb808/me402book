# First-Order LTI System
# Cruise Control Example

from scipy.signal import *

m = 100. # kg
b = 50. # Ns/m

# Make and LTI system
num = [500./m]
den = [1., b/m]
sys1 = lti(num,den)


# Step Response
(T,yout) = step(sys1)
# Plot the time response
figure(1)
clf()
plot(T,yout,'.')
xlabel('Time (s)')
ylabel('Output (units)')
title('Step Response (G(s))')
show()
