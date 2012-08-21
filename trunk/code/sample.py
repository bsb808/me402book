
dt = 0.1  
tend = 6.0
tt = arange(0,tend,dt)
ttt = arange(0,tend,dt/10)
dt = .5
talias1 = arange(0,tend+dt,dt)
dt = 0.75
talias2 = arange(0,tend+dt,dt)

fhz = 1
w = fhz*2*pi
toff = 0.25

yyy = sin(w*(ttt-toff))
yy = sin(w*(tt-toff))
yalias1 = sin(w*(talias1-toff))
yalias2 = sin(w*(talias2-toff))


figure(1)
clf()
plot(ttt,yyy)
hold(True)
plot(tt,yy,'ko')
xlabel('Time [s]')
ylabel('Voltage [V]')
legend(('Analog','Samples'))
show()

tttt = []
yyyy = []
for ii in range(len(tt)-1):
    tttt.append(tt[ii])
    yyyy.append(yy[ii])
    tttt.append(tt[ii+1])
    yyyy.append(yy[ii])
    


figure(2)
clf()
plot(ttt,yyy,':')
plot(tt,yy,'ko')
plot(tttt,yyyy)
xlabel('Time [s]')
ylabel('Voltage [V]')
legend(('Analog','Samples','Digital'))
show()

figure(10)
clf()
plot(ttt,yyy,'y:')
plot(tt,yy,'ko-')
xlabel('Time [s]')
ylabel('Voltage [V]')
legend(('Analog','Digital'))
show()

figure(11)
clf()
plot(ttt,yyy,'y:')
plot(talias1,yalias1,'ko-')
xlabel('Time [s]')
ylabel('Voltage [V]')
legend(('Analog','Digital'))
show()

figure(12)
clf()
plot(ttt,yyy,'y:')
plot(talias2,yalias2,'ko-')
xlabel('Time [s]')
ylabel('Voltage [V]')
legend(('Analog','Digital'))
show()

# solution to book exercise
dt = 0.33
xt = arange(0,3,dt)
yt = arange(-1,1.5,2/(3.0))
figure(4)
clf()
plot(ttt,yyy,'-')
gca().set_xticks(xt)
gca().set_yticks(yt)
grid(True)
xlabel('Time [s]')
ylabel('Voltage [V]')
show()
