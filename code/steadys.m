function f = steadys(vars);

    % unpack variables
    vpi = vars(1);
    pie = vars(2);
    y = vars(3);
    z = vars(4);
    r = vars(5);
    g = vars(6);
    rstar = vars(7);
    x = vars(8);

    % parameters
    cdelta = 0.85;
    csigma = 1;
    clambda = 0.3;
    crho_g = 0.9;
    crho_z = 0.9;
    cbeta = 0.83;
    cgamma = 0.27;
    crho = 0.68;

    % init empty vector to store ss values
    f = zeros(1, length(vars));

    % model
    f(1) = - vpi + cdelta*pie + clambda*(x);
    f(2) = - y + y - (1/csigma)*(r - pie) + g;
    f(3) = - rstar + cbeta * pie + cgamma*x;
    f(4) = - r + crho*r + (1 - crho)*rstar;
    f(5) = - x + y - z;
    f(6) = - g + crho_g*g;
    f(7) = - z + crho_z*z;
    f(8) = - pie + 0.9*pie;
end
