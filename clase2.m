function clase2
g=figure
h=axes
set(h,'position',[0.35 0.35 0.5 0.6])
axis([-10 10 -3 3])%modifica el tamaño de los ejes
%genera la escala
xlabel('eje x')%ponen nombre l eje x
ylabel('eje y')%Pone nombre al eje y
uc=uicontrol(g,'style','edit',...
    'position',[40 40 140 35],...
    'fontsize',14)
uc1=uicontrol('style','text',...
'position',[40 80 140 35],'fontsize',14)
uc2=uicontrol('style','pushbutton',...
'position',[200 40 40 20],'fontsize',8,'string','boton',...
'callback',@filomena)
function filomena(lucrecia,a)
 
a=str2num(get(uc,'string'))
plot(a(1,:),a(2,:))
axis([-5 5 -7 7])
grid on
hold on
set(uc,'string',' ')

set(uc1,'string',num2str(a))
end
end