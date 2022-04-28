%reconocer las notas
clc
clear all 
close all
format short
veces=input('escriba el numero de veces a grabar:   ');

for i=1:1:veces
%close all
clc
Fs=44100; % muestreo inicial para pruebas preliminares.
disp('2')
pause(1)
disp('1')
pause(1)
disp('ya!!!!')
%t=0:1/Fs:0.5;  %o tambien hasta 0.5
%s1=cos(2*pi*10*t)+cos(2*pi*450*t);
s1=wavrecord(2*Fs,Fs);
t=0:1:length(s1)-1;
%plot(t,s1)
L=length(s1);
%prueba  con magnitud
disp(L)
figure
NFFT = 2^nextpow2(L); 
% NFFT=512;
Y = fft(s1,NFFT)/L;
f = (Fs/2)*linspace(0,1,NFFT/2+1);
YY=2*abs(Y(1:NFFT/2+1));
plot(f(1:9000),YY(1:9000)) 
datacursormode on
%axis([0 44000 0 1000 ])
title('Espectro de la señal muestreada ')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')
MATRIX(:,i)=s1;
end
