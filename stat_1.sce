clc;
clear;
clf;
funcprot(0);
n = [4;10;100]
for i = 1:3
    printf("\n The total number of microsates for n = %6.5f is: %6.5f \n",n(i),2^n(i))
end
S1 = zeros(4)
S2 = zeros(10)
S3 = zeros(100)
S1(1)= 0
S2(1) = 0
S3(1) = 0
for i = 2:4
    S1(i) = S1(i-1)+1
end
for i = 2:10
    S2(i) = S2(i-1)+1
end
for i = 2:100
    S3(i) = S3(i-1)+1
end
for i = 1:4
    prob1(i) = (1/(2^n(1)))*(factorial(n(1))/(factorial(n(1)-S1(i))*factorial(S1(i))))
end
for i = 1:10
    prob2(i) = (1/(2^n(2)))*(factorial(n(2))/(factorial(n(2)-S2(i))*factorial(S2(i))))
end
for i = 1: 100
    prob3(i) = (1/(2^n(3)))*(factorial(n(3))/(factorial(n(3)-S3(i))*factorial(S3(i))))
end
subplot(131)
plot(S1,prob1)
xgrid()
xlabel("Events");ylabel("probability")
title("For n =4")
subplot(132)
plot(S2,prob2)
xlabel("Events");ylabel("probability");
title("For n = 10")
xgrid()
subplot(133)
xgrid()
plot(S3,prob3)
xlabel("Events");ylabel("probability")
title("For n =100")
