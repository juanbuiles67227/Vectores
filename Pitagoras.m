A=[0 2;0 3]
plot(A(1,:),A(2,:))
whitebg([0.8 0.9 0.7])
sc=5

    hold on
    axis ([-sc sc -sc sc])

p=pi;
for i=1:100

    M=[cos(p*i/100) -sin(p*i/100);...
        sin(p*i/100) cos(p*i/100)]  %Ecuación Canonica, rota el vestor dpendido de pi

    v=M*A;
    pause(.01)
    plot(v(1,:),v(2,:))
    axis ([-sc sc -sc sc])
end