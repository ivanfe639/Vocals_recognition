
clc

clear all 
close all
format short
%% CALIBRAR VOZ
n=2;
if(exist('calibracion.mat')~=2)

disp('Se va realizar la calibracion pulse una tecla para continuar...')
pause
vo=['a','e','i','o','u'];
cont=1;
for q=1:5

for i=1:1:n
disp('VOCAL ')
disp(vo(q))

Fs=22050; % muestreo inicial para pruebas preliminares.
disp('2')
pause(1)
disp('1')
pause(1)
disp('ya!!!!')
%s1=wavrecord(1*Fs,Fs);
recorder = audiorecorder(5*Fs,8,1,1);
record(recorder,1)
stop(recorder)
s1 = getaudiodata(recorder)


L=length(s1);
fourier=fft(s1);
fourier=abs(fourier);
matrix(:,cont)=s1;
matrixf(:,cont)=fourier;
cont=cont+1;

clc
end

%load vocales
matrixf2=matrixf(1:3675,:);
end
for a=1:1:10
   cont=1;
        for b=1:1:74
            
            matrixdef(b,a)=mean(matrixf2(cont:cont+49,a));
            cont=cont+49;
        end
        matrixdef(75,a)=mean(matrixf2(3626:3675,a));
end

%% Normalizacion
for q=1:10
    
    matrixdef(:,q)=matrixdef(:,q)/max(matrixdef(:,q));
    
end

save 'calibracion.mat' matrixf2 matrixdef
else
    
    load calibracion

end
% 
% for i=1:1:10
%     
%     subplot(3,4,i)    
%     plot(matrixf2(:,i));
%     
% end
figure
for i=1:1:10
    
    subplot(3,4,i)    
    plot(matrixdef(:,i));
    
end
%% INGRESAR GRABACION
disp('realizar grabacion pulse una tecla para iniciar...')

Fs=44100; % muestreo inicial para pruebas preliminares.
pause
s1_=audiorecorder(Fs,8,1);
record(s1_,1)
s1 = getaudiodata(s1_)


s2_=audiorecorder(Fs,8,1);
record(s2_,1)
s2 = getaudiodata(s2_)

for p=1:1:2
if p==1
    
    temp=s1;
    
else
    
    temp=s2;
        
end
fourier=fft(temp);
fourier=abs(fourier);
grabacion=fourier(1:3675);

cont=1;
for b=1:1:74
    
    grabaciondef(b)=mean(grabacion(cont:cont+49));
    cont=cont+49;
    

end
grabaciondef(75)=mean(grabacion(3626:3675));
subplot(3,4,11)
grabaciondef=grabaciondef/max(grabaciondef);
plot(grabaciondef)




%% calculo del error
%error=matrixdef(:,1)-matrixdef(:,2);
vo=['a','a','e','e','i','i','o','o','u','u'];
errores=100;
for d=1:10
%     disp('error de la vocal')
%     disp(vo(d))
    error=0;
    for c=1:length(grabaciondef)
       
        if abs(grabaciondef(c)-matrixdef(c,d))>=0.28
            
            error=error+1;
            
        end
    end
    if error<errores
        
        errores=error;
        pos(p)=d;
        
    end
%     disp('numero d errores')
%     disp(error)
% pause
end
end
disp('UD DIJO:   ')
for l=1:1:2
disp(vo(pos(l)))
end