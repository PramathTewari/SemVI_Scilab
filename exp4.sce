clc;
clc
clf
clear
disp("Pramath,19017")
x = linspace(1,50,100)
x1 = linspace(-1*50,50,100)
T = [1,5,10]
for i = 1:100
    for j = 1:3
        f(j,i)=1/exp(x(i)/T(j))
        f1(j,i) = 1/(exp((x(i)/T(j)))-1)
        f2(j,i) = 1/(exp((x1(i)/T(j)))+1)
    end
end
subplot(221)
    plot(x,f(1,:),'-*')
    plot(x,f(2,:))
    plot(x,f(3,:),'-.')
    legend('at T1 = 1K','at T2 = 5K','at T3=10K')
    xtitle("Maxwell Boltzmann Distribution")
    xgrid()
subplot(222)
    plot(x,f1(1,:),'-*')
    plot(x,f1(2,:))
    plot(x,f1(3,:),'-.')
    legend('at T1 = 1K','at T2 = 5K','at T3=10K')
    xtitle("Bose Einstien Distribution")
    xgrid()
subplot(223)
    plot(x1,f2(1,:),'-*')
    plot(x1,f2(2,:))
    plot(x1,f2(3,:),'-.')
    xgrid()
    legend('at T1 = 1K','at T2 = 5K','at T3=10K')
    xtitle("Fermi Dirac Distribution")
subplot(224)
    a = [-1 0 1]
    T = 200
    k = 8.82e-5
    b = k*T
    u = 0
    E = linspace(1e-2,4.3e-2,10)
    for i = 1:10
        for j = 1:3
            A(j,i)=1/(exp(E(i)/b) +a(j))
        end
    end
    plot(E,A(1,:),'-.')
    plot(E,A(2,:),'-*')
    plot(E,A(3,:))
    legend('Bose Einstien','Maxwell Boltzman','Fermi-Dirac')
    xlabel('E/k')
    ylabel('Distributon Function')
    xtitle("Comparison of Distribution Functions")
    xgrid()
