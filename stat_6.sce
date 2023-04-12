clc;
clear;
clf;
k=1.38e-23;
N = 6e23;
v = [0:10:1000]
T = [200:200:600]
sz = length(v)
name = input("Enter the name of gas: ","string")
M = input("Enter the molar mass of "+string(name)+":")
for i = 1:3
    for j = 1:sz
        f(j,i)= (4*%pi)*((M/(2*%pi*k*T(j)))^(3/2))*(v(i)^2)*exp((-M*v(i)^2)/(2*k*T(j)))
    end
end
subplot(311)
plot(v,f(1,:))
subplot(312)
plot(v,f(2,:))
subplot(313)
plot(v,f(3,:))
