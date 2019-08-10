function Figure %Dedine todos los elemtos como globales
g=figure %Abre la pantalla para controlar el visual
h=axes %Muestra los ejes cartesianos
set(h,'position',[0.35 0.35 0.5 0.6]) %Desplazamiento de la Gráfica
axis ([-10 10 -5 5]) %Establece los ejes del plano, primo el ejex y luego el eje y
title('Bules') %Nombre de la Gráfica
xlabel('Eje X') %Nombre del eje X
ylabel('Eje Y') %Nombre del eje Y
uc=uicontrol('style','edit',... %Agrega un textBox
    'position',[40 40 140 35],... %Posición del textBox
    'fontsize',16,'callback',@builes) %Tamaño del textBox y callback para generar un evento
ucl=uicontrol('style', 'text',...
    'position',[40 120 140 80], 'fontsize',14)
function builes(atributos, a) %Llamado es un parametro
a=str2num(get(atributos, 'string'))
plot(a(1,:),a(2,:)) %Grafica
axis ([-10 10 -5 5])
hold on %Grada todas las Graficas
set(atributos,'string',' ') %Limpia l textBox
set(ucl,'string', num2str(a))
end
end