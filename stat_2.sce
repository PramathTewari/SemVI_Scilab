clc;
funcprot(0)
clear;
clf;
x1 = linspace(1.2e-6,3e-6,20)
x2 = linspace(0.1*1e-6,3*1e-6,50)
h = 6.626e-34
k = 1.38e-23
c = 3e8
T1 = 3000
T2 = 5000
for i = 1:20
  
    ray1(i) = (8*%pi*k*T1)/((x1(i))^4)
    ray2(i) = (8*%pi*k*T2)/((x1(i))^4)
end

plot(x1',ray1,'.-')
plot(x1',ray2,'-o')
xname("Pramath 19017")
xlabel("Wavelength")
ylabel("Energy")
title("Ray-Leigh Jeans Law")
xgrid()
legend(["T1";"T2"])
for i = 1:50
   wein1(i)= ((8*%pi*h*c)/(((x2(i)^5))*exp((h*c)/(x2(i)*k*T1))))
    wein2(i)= ((8*%pi*h*c)/(((x2(i)^5))*exp((h*c)/(x2(i)*k*T2))))
end
scf()
plot(x2',wein1,'.-r')
plot(x2',wein2,'-or')
legend(["T1";"T2"])
xname("Pramath 19017")
xlabel("Wavelength")
ylabel("Energy")
title("Weins law")
xgrid()
for i = 1:50
   planck1(i)= ((8*%pi*h*c)/(((x2(i)^5))*(exp((h*c)/(x2(i)*k*T1))-1)))
    planck2(i)= ((8*%pi*h*c)/(((x2(i)^5))*(exp((h*c)/(x2(i)*k*T2))-1)))
end
scf()
plot(x2',planck1,'.-g')
plot(x2',planck2,'-og')
xname("Pramath 19017")
xlabel("Wavelength")
ylabel("Energy")
title("Plancks Law")
legend(["T1";"T2"])
xgrid()
scf()
xname("Pramath 19017")
xlabel("Wavelength")
ylabel("Energy")
title("Comparison of radiation laws")
plot(x2',planck2,'.-g')
plot(x2',wein2,'.-r')
plot(x1',ray2,'.-')
xgrid()
legend(["Planck Law";"Weins Law";"Ray-Leigh Jeans Law"])
