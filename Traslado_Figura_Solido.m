clear all
clc
close all
t=0:2*pi/100:2*pi; %Ir en los extremos de los intervalos y con el salto de valor intermedio
whitebg([0.3 0.6 1])
x=cos(t)
y=sin(t)
z=zeros(1,length(t)) %Agrega el eje Z
z1=ones(1,length(t))
A=[x x;y y;z z1]
% plot3(A(1,:),A(2,:),A(3,:))

sc=3


for i=1:length(t)-1
    fac(i,:)=[i,i+1,i+length(t)+1,i+length(t)]; 
end
g=patch('faces',fac,'vertices',A',...
    'facecolor', [0 0 0.4],'edgecolor', [0 0 0.4])

view([135 25])
axis ([-sc sc -sc sc -sc sc])

p=pi*3;
for i=1:100

    M=[cos(p*i/100) 0 -sin(p*i/100);...
      sin(p*i/100) 0 cos(p*i/100);...
      0 1 0];  %Ecuación Canonica, rota el vestor dpendido de pi
    v=M*A;
    pause(.05)
    set(g, 'vertices', v')
end