function [P] = Lagrange(x, points)

fx=[];
for i=1:length(x) %find value of function f(x) for each point
    f=sin(pi/2*x(i))+x(i)^2/4;
    fx=[fx f]; %puts each function value in array
end

P=[];

for i=1:length(points) %finds legrange values at each desired x value
    L_0=(points(i)-x(2))*(points(i)-x(3))*(points(i)-x(4))/(x(1)-x(2))*(x(1)-x(3))*(x(1)-x(4));
    L_1=(points(i)-x(1))*(points(i)-x(3))*(points(i)-x(4))/(x(2)-x(1))*(x(2)-x(3))*(x(2)-x(4));
    L_2=(points(i)-x(1))*(points(i)-x(2))*(points(i)-x(4))/(x(3)-x(1))*(x(3)-x(2))*(x(3)-x(4));
    L_3=(points(i)-x(1))*(points(i)-x(2))*(points(i)-x(3))/(x(4)-x(1))*(x(4)-x(2))*(x(4)-x(3));
    
    L=[L_0 L_1 L_2 L_3];

    value=sum(fx.*L); %multiples and sums legrange values and function values for each point (P(x))
    P=[P value]; %array of p values at each interpolation point x.
end 

plot(points,P)
title('Question 1d Legrange Interpolation')

end
