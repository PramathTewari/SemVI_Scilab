clc
funcprot (0)
clf
//Defining contstants 
K=1.38e-23
e=1.6e-19
V=1
h=6.626e-34
c=3e8
U1=1*e
U2=-1*e
U=0
E=0
//Defining range of energy 
E1=0:0.001:5 //for bosons
E2=0:0.01:3   //for fermions
//Taking inputs from user
x=input("Particle is a boson=1 or fermion=2 ? ")
y=input("Is it relativistic=1 or non relativistic case=2 ? ")
//Defining range of temperature
if y==1 then
    T=[10^8,10^9]
else 
    T=[100,1000]
end
//Bose-einstein
for i=1:length(T)
    for j=1:length(E1)
        if y==1 then 
            U=U2*(10^6)
            E=e.*E1*(10^6)
f1(i,j)=(1/((exp((E(j)-U)/(K*T(i)))-1)))
else 
    U=U2
    E=e.*E1
    f1(i,j)=(1/((exp((E(j)-U)/(K*T(i)))-1)))
end
end
end
//Fermi-Dirac 
for i=1:length(T)
    for j=1:length(E2)
        if y==1 then 
            U=U1*(10^6)
            E=e.*E2*(10^6)
f2(i,j)=(1/((exp((E(j)-U)/(K*T(i)))+1)))
else 
    U=U1
    E=e.*E2
    f2(i,j)=(1/((exp((E(j)-U)/(K*T(i)))+1)))
end
end
end
//Making conditions
C=0
N=0
Cn=0
if x==2 then
m=9.1e-31
s=(1/2)
if y==1 then
    C=(2*s*4*%pi*V)/((h)^3*(c)^3)
    for i=1:length(T)
    for j=1:length(E)
N(i,j)=f2(i,j)*C*((E(j))^2)
end
end
end
if y==2 then 
        Cn=(((2*s+1)*(2*%pi*V*(2*m)^(3/2)))/(h^3))
        for i=1:length(T)
    for j=1:length(E)
N(i,j)=f2(i,j)*Cn*(sqrt(E(j)))
end
end
end
        end
if x==1
    s=1
    m=4*(9.1e-31)
    if y==1 then
    C=(2*s*4*%pi*V)/((h)^3*(c)^3)
    for i=1:length(T)
    for j=1:length(E)
N(i,j)=f1(i,j)*C*((E(j))^2)
end
end
end
if y==2 then 
        Cn=(((2*s+1)*(2*%pi*V*(2*m)^(3/2)))/(h^3))
        for i=1:length(T)
    for j=1:length(E)
N(i,j)=f1(i,j)*Cn*(sqrt(E(j)))
end
end
end
end
//Plotting graphs
xname("Pramath-20/19017")
xgrid(5,2,1)
subplot(1,2,1)
plot(E.',N(1,:),'b')
title("Desnsity of particles vs energy for T1"),xlabel("Energy"),ylabel("Density of particle")
subplot(1,2,2)
xgrid(5,2,1)
plot(E.',N(2,:),'m')
title("Desnsity of particles vs energy for T2"),xlabel("Energy"),ylabel("Density of particle")






