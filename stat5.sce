clc;
funcprot(0);
clear;
k = 8.617e-05
e =1.6e-19
u = 0
mn = 0.511e6
mb = 4*mn
h = 4.315e-15
V = 1
c = 3e8
E = 1.1:0.1:5
T1 = 100
T2 = 1000
//for fermions non rel
cn = (4*%pi*(2*mn)^(3/2))/h^3
len1 = length(E)
for i = 1:len1
    dn1(i) = (cn*sqrt(E(i)))/(exp((E(i)+1)/(k*T1))+1)
    dn2(i) = (cn*sqrt(E(i)))/(exp((E(i)+1)/(k*T2))+1)
end
scf()
subplot(211)
plot(E,dn1','-*b')
ylabel("Density of states");
xlabel("Energy");
title("Fermions in non relativistic case for T1 = 100K")
xgrid()
subplot(212)
plot(E,dn2','-*b')
ylabel("Density of states");
xlabel("Energy");
title("Fermions in non relativistic case for T2 = 1000K")
xgrid()
//for fermions relativistic
T1 = 10e7
T2 = 10e8
cr = (4*%pi*V)/(h^3*c^3)
for i = 1:len1
    dn1(i) = (cr*(E(i))^2)/(exp((E(i)+1)/(k*T1))+1)
    dn2(i) = (cr*(E(i))^2)/(exp((E(i)+1)/(k*T2))+1)
end
scf()
subplot(211)
plot(E,dn1','-*r')
ylabel("Density of states");
xlabel("Energy");
title("Fermions in relativistic case T1")
xgrid()
subplot(212)
plot(E,dn2','-*r')
ylabel("Density of states");
xlabel("Energy");
title("Fermions in relativistic case T2")
xgrid()
//for non relativistic bosons
T1 = 100
T2 = 1000
cn = (6*%pi*(2*mb)^(3/2))/h^3
for i = 1:len1
    dn1(i) = (cn*sqrt(E(i)))/(exp((E(i)-1)/(k*T1))-1)
    dn2(i) = (cn*sqrt(E(i)))/(exp((E(i)-1)/(k*T2))-1)
end
scf()
subplot(211)
plot(E,dn1','-*b')
ylabel("Density of states");
xlabel("Energy");
title("Bosons in non relativistic case for T1 = 100K")
xgrid()
subplot(212)
plot(E,dn2','-*b')
xlabel("Density of states");
ylabel("Energy");
title("Bosons in non relativistic case for T2 = 1000K")
xgrid();
//For relativistic bosons
T1 = 10e7
T2 = 10e8
cr = (8*%pi*V)/(h^3*c^3)
for i = 1:len1
    dn1(i) = (cr*(E(i))^2)/(exp((E(i)-1)/(k*T1))-1)
    dn2(i) = (cr*(E(i))^2)/(exp((E(i)-1)/(k*T2))-1)
end
scf()
subplot(211)
plot(E,dn1','-*r')
ylabel("Density of states");
xlabel("Energy");
title("Bosons in relativistic case T1")
xgrid()
subplot(212)
plot(E,dn2','-*r')
ylabel("Density of states");
xlabel("Energy");
title("Bosons in relativistic case T2")
xgrid()
