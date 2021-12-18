clc;
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

%triangular window
fs=400
t = 0:1/fs:1
for i=1:1:fs/2+1
  tw(i) = (i-1)/(fs/2);
end
if mod(fs,2)==0
  for j=fs/2+1:1:fs-1
    i = i + 1;
    tw(i) = 2 - (i)/(fs/2);
  end
else
  for j=fs/2+1:1:fs
    i = i + 1;
    tw(i) = 2 - (i)/(fs/2);
  end
end
subplot(2,2,3);
plot(t,tw);
title('Triangular Window');

%sine wave x rectangular window
sintri = y.*tw;
subplot(2,2,4);
plot(t,sintri);
title('Sine Wave through Rectangular Window');