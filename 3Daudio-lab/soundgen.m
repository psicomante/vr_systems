Fs = 44100;
t = 0:(1 / Fs):5;

x = sin(2*pi*(440 + 100*cos(2*pi.*t)).*t);

sound(x, Fs);
wavwrite(x, Fs, 16, 'tone.wav');

plot(x);