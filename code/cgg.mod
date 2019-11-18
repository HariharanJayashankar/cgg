var vpi pie y z r g rstar x;
varexo eps_pie;

parameters cdelta clambda csigma cbeta cgamma crho crho_g crho_z;

load xinit;

// parameter values

cdelta = 0.85;
csigma = 1;
clambda = 0.3;
crho_g = 0.9;
crho_z = 0.9;
cbeta = 0.83;
cgamma = 0.27;
crho = 0.68;

// model

model;
vpi = cdelta*pie + clambda*(x);              // PC curve
y = y(+1) - (1/csigma)*(r - pie) + g;       // IS
rstar = cbeta * pie + cgamma*x;             // policy function 1
r = crho*r(-1) + (1 - crho)*rstar;          // policy function 2
x = y - z;
g = crho_g*g(-1);                           // exogenous processes
z = crho_z*z(-1);                           // exogenous processes
pie = 0.95*pie(-1) - eps_pie;                // expected pie process with a negative shock
end;

// steady state

initval;
vpi = xinit(1);
y = xinit(2);
z = xinit(3);
r = xinit(4);
g = xinit(5);
rstar = xinit(6);
x = xinit(7);
end;

steady;
resid;
check;


// shocks
shocks;
var eps_pie;
stderr 0.68;
end;

stoch_simul(order=1,irf=12, nograph);

// plotting

figure('name','Response to Shock to Expected $\pi$', 'position', [0, 0, 400, 800]);
set(gcf,'PaperPositionMode','auto');
subplot(4,1,1);
plot(vpi_eps_pie, '-o');
title('Inflation');
axis tight;
subplot(4, 1, 2);
plot(x_eps_pie, '-o');
title('Output Gap');
axis tight;
subplot(4, 1, 3);
plot(r_eps_pie, '-o');
title('Nominal Rate');
axis tight;
subplot(4, 1, 4);
plot(r_eps_pie - pie_eps_pie, '-o');
title('Real Rate');
axis tight;
print('irfs','-dpdf');
