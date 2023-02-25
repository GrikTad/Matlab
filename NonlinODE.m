%Baby boot soln
degreesToRadians = pi/180;
initialState = [90*degreesToRadians, 1.0*degreesToRadians 0 0];
timeInterval = linspace(0,10,100);
odeOptions = odeset('RelTol', 1.0e-7,'AbsTol',1.0E-8)
odefun = @(T,q) [q(3);...
                 q(4);...
       2*(508.89*sin(q(1))-sin(q(2)).*cos(q(2)).*q(3).*q(4))./(-21.556+sin(q(2)).^2);
       -sin(q(2)).*cos(q(2)).*q(3).^2];
[time, stateMatrix] = ode45(odefun,timeInterval,initialState,odeOptions);
qA=stateMatrix(:,1)
qB=stateMatrix(:,2)
figure(1)
clf
plot(time,qB/degreesToRadians,'r--','Linewidth',2)
xlabel(' Time (seconds ', 'FontSize', 16, 'FontName','Arial','fontweight','bold')
ylabel(' q_b() (degrees)','FontSize', 16, 'FontName','Arial','fontweight','bold')
title('"Chaotic": qa(0) = 90^{o} ; qb(0)    =1^{o}','FontSize',16,'FontName','Arial','fontweight','bold')
%% stable solution qa(0)=45 qb=1
degreesToRadians = pi/180;
initialState = [45*degreesToRadians, 1.0*degreesToRadians 0 0];
timeInterval = linspace(0,10,100);
odeOptions = odeset('RelTol', 1.0e-7,'AbsTol',1.0E-8)
odefun = @(T,q) [q(3);...
                 q(4);...
       2*(508.89*sin(q(1))-sin(q(2)).*cos(q(2)).*q(3).*q(4))./(-21.556+sin(q(2)).^2);
       -sin(q(2)).*cos(q(2)).*q(3).^2];
[time, stateMatrix] = ode45(odefun,timeInterval,initialState,odeOptions);
qA=stateMatrix(:,1)
qB=stateMatrix(:,2)
figure(1)
clf
plot(time,qB/degreesToRadians,'r--','Linewidth',2)
xlabel(' Time (seconds ', 'FontSize', 16, 'FontName','Arial','fontweight','bold')
ylabel(' q_b() (degrees)','FontSize', 16, 'FontName','Arial','fontweight','bold')
title('"stable": qa(0) = 45^{o} ; qb(0)   = 1^{o}','FontSize',16,'FontName','Arial','fontweight','bold')