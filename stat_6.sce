clc;
clear;
clf;
k=1.38e-23;
m = 1.67e-27;
N = 6e23;
v = [0:10:3000]
T = [200:200:600]
sz = length(v)
name = input("Enter the name of gas: ","string")
M = input("Enter the molar mass of "+string(name)+":")
M = M*m
for i = 1:3
    a = M/(2*k*T(i))
    for j = 1:sz
        f(i,j)= (4*%pi)*((a/%pi)^(3/2))*(v(j)^2)*exp(-a*v(j)^2)
    end
    [x,y] = max(f(i,:))
    vmp = v(y)
    vavg = vmp*sqrt(4/%pi)
    vrms = vmp*sqrt(3/2)
    disp (T(i),"For Temperature(K): ")
    disp(vmp,"The most probable speed(m/s): ")
    disp(vavg,"The average speed(m/s): ")
    disp(vrms,"The root mean square speed(m/s): ")
end
plot(v,f(1,:),'-*')
plot(v,f(2,:),'-.')
plot(v,f(3,:))
xgrid()
xlabel("Velocity"); ylabel("Number of particles");
xtitle("Maxwell Velocity Distribution")
legend('T = 200K','T = 400K','T = 600K')
[x,y]=max(f(1,:))
disp(y)


