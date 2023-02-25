lambda = -0.5;
y0=1;
t0=0;
t_f=10;
t_soln=linspace(t0,t_f);
y_soln = y0*exp(lambda*t_soln);
ode_fun = @(t,y) lambda*y;
[t,y]=ode45(ode_fun,[t0,t_f],y0);
figure(1)
clf
hold on
plot(t_soln,y_soln)
plot(t,y,'--')
legend({'Analytical Soln','ode45'},'FontSize', 16, 'Location','northeast')
xlabel('t','FontSize', 16,'Fontname','Arial','fontweight','bold')
ylabel('y(t)','FontSize',16,'Fontname','Arial','fontweight','bold')
title('y''+0.5y=0','FontSize',16,'Fontname','Arial','fontweight','bold')
hold off
