global uc1
g=figure
h=axes
set(h,'position',[0.35 0.35 0.5 0.6])
axis([-10 10 -3 3])%modifica el tama�o de los ejes
%genera la escala
xlabel('eje x')%ponen nombre l eje x
ylabel('eje y')%Pone nombre al eje y
uc=uicontrol(g,'style','edit',...
    'position',[40 40 140 35],...
    'fontsize',14,'callback',@filomena)
uc1=uicontrol('style','text',...
'position',[40 80 140 35],'fontsize',14)
function filomena(lucrecia,a,uc1)
a=str2num(get(lucrecia,'string'))
plot(a(1,:),a(2,:))
axis([-5 5 -7 7])
grid on
hold on
set(lucrecia,'string',' ')
set(uc1,'string','Buen d�a')
end