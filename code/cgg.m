%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'cgg';
M_.dynare_version = '4.5.6';
oo_.dynare_version = '4.5.6';
options_.dynare_version = '4.5.6';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('cgg.log');
M_.exo_names = 'eps_pie';
M_.exo_names_tex = 'eps\_pie';
M_.exo_names_long = 'eps_pie';
M_.endo_names = 'vpi';
M_.endo_names_tex = 'vpi';
M_.endo_names_long = 'vpi';
M_.endo_names = char(M_.endo_names, 'pie');
M_.endo_names_tex = char(M_.endo_names_tex, 'pie');
M_.endo_names_long = char(M_.endo_names_long, 'pie');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names_long = char(M_.endo_names_long, 'y');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, 'z');
M_.endo_names_long = char(M_.endo_names_long, 'z');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, 'r');
M_.endo_names_long = char(M_.endo_names_long, 'r');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, 'g');
M_.endo_names_long = char(M_.endo_names_long, 'g');
M_.endo_names = char(M_.endo_names, 'rstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'rstar');
M_.endo_names_long = char(M_.endo_names_long, 'rstar');
M_.endo_names = char(M_.endo_names, 'x');
M_.endo_names_tex = char(M_.endo_names_tex, 'x');
M_.endo_names_long = char(M_.endo_names_long, 'x');
M_.endo_partitions = struct();
M_.param_names = 'cdelta';
M_.param_names_tex = 'cdelta';
M_.param_names_long = 'cdelta';
M_.param_names = char(M_.param_names, 'clambda');
M_.param_names_tex = char(M_.param_names_tex, 'clambda');
M_.param_names_long = char(M_.param_names_long, 'clambda');
M_.param_names = char(M_.param_names, 'csigma');
M_.param_names_tex = char(M_.param_names_tex, 'csigma');
M_.param_names_long = char(M_.param_names_long, 'csigma');
M_.param_names = char(M_.param_names, 'cbeta');
M_.param_names_tex = char(M_.param_names_tex, 'cbeta');
M_.param_names_long = char(M_.param_names_long, 'cbeta');
M_.param_names = char(M_.param_names, 'cgamma');
M_.param_names_tex = char(M_.param_names_tex, 'cgamma');
M_.param_names_long = char(M_.param_names_long, 'cgamma');
M_.param_names = char(M_.param_names, 'crho');
M_.param_names_tex = char(M_.param_names_tex, 'crho');
M_.param_names_long = char(M_.param_names_long, 'crho');
M_.param_names = char(M_.param_names, 'crho_g');
M_.param_names_tex = char(M_.param_names_tex, 'crho\_g');
M_.param_names_long = char(M_.param_names_long, 'crho_g');
M_.param_names = char(M_.param_names, 'crho_z');
M_.param_names_tex = char(M_.param_names_tex, 'crho\_z');
M_.param_names_long = char(M_.param_names_long, 'crho_z');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 8;
M_.param_nbr = 8;
M_.orig_endo_nbr = 8;
M_.aux_vars = [];
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('cgg_static');
erase_compiled_function('cgg_dynamic');
M_.orig_eq_nbr = 8;
M_.eq_nbr = 8;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 5 0;
 1 6 0;
 0 7 13;
 2 8 0;
 3 9 0;
 4 10 0;
 0 11 0;
 0 12 0;]';
M_.nstatic = 3;
M_.nfwrd   = 1;
M_.npred   = 4;
M_.nboth   = 0;
M_.nsfwrd   = 1;
M_.nspred   = 4;
M_.ndynamic   = 5;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(8, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(8, 1);
M_.NNZDerivatives = [24; -1; -1];
load xinit;
M_.params( 1 ) = 0.85;
cdelta = M_.params( 1 );
M_.params( 3 ) = 1;
csigma = M_.params( 3 );
M_.params( 2 ) = 0.3;
clambda = M_.params( 2 );
M_.params( 7 ) = 0.9;
crho_g = M_.params( 7 );
M_.params( 8 ) = 0.9;
crho_z = M_.params( 8 );
M_.params( 4 ) = 2;
cbeta = M_.params( 4 );
M_.params( 5 ) = 0.27;
cgamma = M_.params( 5 );
M_.params( 6 ) = 0.68;
crho = M_.params( 6 );
%
% INITVAL instructions
%
options_.initval_file = 0;
oo_.steady_state( 1 ) = xinit(1);
oo_.steady_state( 3 ) = xinit(2);
oo_.steady_state( 4 ) = xinit(3);
oo_.steady_state( 5 ) = xinit(4);
oo_.steady_state( 6 ) = xinit(5);
oo_.steady_state( 7 ) = xinit(6);
oo_.steady_state( 8 ) = xinit(7);
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
steady;
resid;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.68)^2;
options_.irf = 12;
options_.nograph = 1;
options_.order = 1;
var_list_ = char();
info = stoch_simul(var_list_);
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
save('cgg_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('cgg_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('cgg_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('cgg_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('cgg_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('cgg_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('cgg_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
