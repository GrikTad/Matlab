%ENGR 215 Lec Pendulum example
%Grik Tadevosyan
g = 9.8; %m/s^2 accelaration due to gravititvity
L=1
y0 = [30*pi/180,0];
odefun = @(t,theta) [theta(2);...   %first ode
                     -g*sin(theta(1))/L]; %second ode
tspan=linspace(0,5);
[t,Theta] = ode45(odefun,tspan,y0)
plot(t,Theta(:,1)*180/pi,'linewidth',2)
xlabel('time (s)','FontSize', 16,'Fontname','Arial','fontweight','bold')
ylabel('{\theta} {degress}','FontSize',16,'Fontname','Arial','fontweight','bold')
title('Pendulum motion','FontSize',16,'Fontname','Arial','fontweight','bold')