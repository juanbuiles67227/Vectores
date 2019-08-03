t=0:2*pi/100:2*pi; %Puntos de la circunferencia
r=[1,2,3,4,5,6,7,8,9,10] %Radio
for j=1:10 %Ciclo para evaluar
x=r(1,j)*cos(t+pi/4); %Posiciones en x 
y=r(1,j)*sin(t+pi/4); %Posiciones en y
plot(x,y);
% plot(t,x); %Grafica del coseno
% plot(t,y); %Grafica del seno
hold on;
axis([-10 10 -10 10]);
pause(0.5) %Tiempo de graficación de las 10 esferas
end