clear all
clc
close all
t=0:2*pi/9:2*pi; %Ir en los extremos de los intervalos y con el salto de valor intermedio

x=cos(t)
y=sin(t)
z=zeros(1,length(t)) %Agrega el eje Z
A=[x;y;z]
g=patch('faces',[1:9],'vertices',A',...
    'facecolor', [0.3 0.9 1])
whitebg([0.3 0.6 1])
sc=1.2

axis ([-sc sc -sc sc -sc sc])
view([135 25]) %Vista en isometrico
grid on
p=pi*3;
for i=1:100

    M=[cos(p*i/100) 0 -sin(p*i/100);...
      sin(p*i/100) 0 cos(p*i/100);...
      0 1 0];  %Ecuación Canonica, rota el vestor dpendido de pi
    v=M*A;
    pause(.05)
    set(g, 'vertices', v')
end