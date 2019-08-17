clear all
clc
close all
t=0:2*pi/4:2*pi; %Ir en los extremos de los intervalos y con el salto de valor intermedio

x=cos(t)
y=sin(t)
A=[x;y]
g=plot(x,y)
whitebg([0.9 0.6 0.7])
sc=1.2

axis ([-sc sc -sc sc])
p=pi/4;
for i=1:100

    M=[cos(p*i/100) -sin(p*i/100);...
      sin(p*i/100) cos(p*i/100)]  %Ecuación Canonica, rota el vestor dpendido de pi
    v=M*A;
    pause(.15)
    set(g, 'Xdata', v(1,:),...
        'ydata', v(2,:))
end