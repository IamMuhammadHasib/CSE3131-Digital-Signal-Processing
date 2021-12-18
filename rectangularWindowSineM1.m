clc;
clear all;
close all;

%1000 oscilations in 1 second
%sampling rate, fs = 8000 highest value = 2 found
fs = 8000
f = 1000
t = 0:1/fs:1
y = 2*sin(2*pi*f*t)
subplot(2,2,1)
stem(t,y)
title('Sine, fs = 8000')

%visually understandable portion
%normal sine wave
fs = 50000
f = 1000
t = 0:1/fs:0.008
y = 2*sin(2*pi*f*t)
subplot(2,2,2)
stem(t,y)
title('Sine, fs = 50000')

%rectangular window
fs = 400
t = 0:1/fs:1
rectwin = t-t+1
subplot(2,2,3)
plot(t,rectwin)
title('Rectangular Window')

%sine wave x rectangular window
sinrect = y.*rectwin;
subplot(2,2,4);
plot(t,sinrect);
title('Sine Wave through Rectangular Window');

