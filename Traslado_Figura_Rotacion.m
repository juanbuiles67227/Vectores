function Rotador
clear all
clc
close all
figure
axes('position',[0.25 0.35 0.50 0.50])
uicontrol('style','slider','position',[20 20 120 20],'min',-pi,'callback',@rot)
t=0:2*pi/4:2*pi; %Ir en los extremos de los intervalos y con el salto de valor intermedio

x=cos(t)
y=sin(t)
A=[x;y]
g=patch('faces',[1 2 3 4],'vertices',A',...
    'facecolor', [0.3 0.9 1])
whitebg([0.3 0.6 1])
sc=1.2

axis ([-sc sc -sc sc])
p=pi/4;
function rot(atr,cam)
a=get(atr,'value')
% for i=1:100

    M=[cos(a) -sin(a);...
      sin(a) cos(a)]  %Ecuación Canonica, rota el vestor dpendido de pi
    v=M*A;
    set(g, 'vertices', v')
end
end
