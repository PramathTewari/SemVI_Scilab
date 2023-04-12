clc
clf
clear
disp("Pramath,19017")
name=input("enter the name of the solid ; ",'string')
K=1.38*1e-23
Te=input("enter einstein temp in kelvin ; ") 
Td=input("enter debye temp in kelvin ; ") 
N=6*1e23
T=(linspace(0,2*Td))' 
for i=1:length(T)
    Cvdp(i)=3*N*K
    if T(i)==0 then
        Cve(i)=0
        Cvd(i)=0
    else
        x=Te/T(i)
        Cve(i)=(3*N*K*(x^2)*exp(x))/((exp(x)-1)^2)
        if T(i)>Td/50 then
            I=integrate('((y^4)*exp(y))/((exp(y)-1)^2)','y',0,Td/T(i))
            Cvd(i)=(9*N*K*I*((T(i)/Td)^3))
        else
            Cvd(i)=((12*3.14^4)/5)*N*K*((T(i)/Td)^3)
end                     
end            
end
subplot(111)
xgrid()
plot(T,Cvdp,'-or')
plot(T,Cve,'b')
plot(T,Cvd,'-+m')
title(""+string(name))
legend(['Doulog-Petit';'Einstein';'Debye'])
xlabel("Temperature(kelvin)"),ylabel("specific heat capacity(J/kgK)")

