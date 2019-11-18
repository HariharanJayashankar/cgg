nvars = 8;
vars_init = ones(1, nvars);

% solving ss
f = @steadys;
[xinit, fval, exitflag] = fsolve(f, vars_init);

xinit = real(xinit);
save('xinit.mat', 'xinit');
