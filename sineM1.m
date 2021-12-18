clc
close all

%easy sine wave in 100 sampling rate
fs = 100
t = 0:1/fs:1
y = sin(2*pi*t)
subplot(2, 2, 1)
stem(t,y)

%1000 oscilations in 1 second
%sampling rate, fs = 2000 still missing original signal
fs = 2001
f = 1000
t = 0:1/fs:1
y = 2.*sin(2*pi*f*t)
subplot(2,2,2)
stem(t,y)
title('fs = 2000')

%1000 oscilations in 1 second
%sampling rate, fs = 3000 still missing highest value = 2
fs = 3000
f = 1000
t = 0:1/fs:1
y = 2*sin(2*pi*f*t)
subplot(2,2,3)
stem(t,y)
title('fs = 3000')

%1000 oscilations in 1 second
%sampling rate, fs = 8000 highest value = 2 found
fs = 8000
f = 1000
t = 0:1/fs:1
y = 2*sin(2*pi*f*t)
subplot(2,2,4)
stem(t,y)
title('fs = 8000')