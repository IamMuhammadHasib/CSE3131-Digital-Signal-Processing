clc
close all

t = -10:10;

%unit sample/impulse
y=(t-0 == 0);
subplot(2 ,2, 1)
stem(t,y)

%unit step
y = 0*t;
y(t(:) >= 0) = 1;
subplot(2, 2, 2);
stem(t, y)

%unit ramp
y = t;
y(t(:) < 0) = 0;
subplot(2, 2, 3);
stem(t, y)
title('\fontsize{18} Unit Ramp')

%exponential
x = 0:20
y =0.8.^x
subplot(2, 2, 4)
stem(x, y)
title('\fontsize{18} Exponential')



