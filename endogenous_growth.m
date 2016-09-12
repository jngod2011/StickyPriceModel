%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clear all
tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'endogenous_growth';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('endogenous_growth.log');
M_.exo_names = 'epsilon_chi';
M_.exo_names_tex = '{\epsilon}^{\chi}';
M_.exo_names_long = 'epsilon_chi';
M_.endo_names = 'g';
M_.endo_names_tex = '{g}';
M_.endo_names_long = 'g';
M_.endo_names = char(M_.endo_names, 'ZD');
M_.endo_names_tex = char(M_.endo_names_tex, '{Z_D}');
M_.endo_names_long = char(M_.endo_names_long, 'ZD');
M_.endo_names = char(M_.endo_names, 'VD');
M_.endo_names_tex = char(M_.endo_names_tex, '{V_D}');
M_.endo_names_long = char(M_.endo_names_long, 'VD');
M_.endo_names = char(M_.endo_names, 'J');
M_.endo_names_tex = char(M_.endo_names_tex, '{J}');
M_.endo_names_long = char(M_.endo_names_long, 'J');
M_.endo_names = char(M_.endo_names, 'H');
M_.endo_names_tex = char(M_.endo_names_tex, '{H}');
M_.endo_names_long = char(M_.endo_names_long, 'H');
M_.endo_names = char(M_.endo_names, 'Pi');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Pi}');
M_.endo_names_long = char(M_.endo_names_long, 'Pi');
M_.endo_names = char(M_.endo_names, 'ND');
M_.endo_names_tex = char(M_.endo_names_tex, '{N_D}');
M_.endo_names_long = char(M_.endo_names_long, 'ND');
M_.endo_names = char(M_.endo_names, 'YDW');
M_.endo_names_tex = char(M_.endo_names_tex, '{Y^W_D}');
M_.endo_names_long = char(M_.endo_names_long, 'YDW');
M_.endo_names = char(M_.endo_names, 'YD');
M_.endo_names_tex = char(M_.endo_names_tex, '{Y_D}');
M_.endo_names_long = char(M_.endo_names_long, 'YD');
M_.endo_names = char(M_.endo_names, 'CD');
M_.endo_names_tex = char(M_.endo_names_tex, '{C_D}');
M_.endo_names_long = char(M_.endo_names_long, 'CD');
M_.endo_names = char(M_.endo_names, 'Lambda');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Lambda}');
M_.endo_names_long = char(M_.endo_names_long, 'Lambda');
M_.endo_names = char(M_.endo_names, 'UCD');
M_.endo_names_tex = char(M_.endo_names_tex, '{U_{CD}}');
M_.endo_names_long = char(M_.endo_names_long, 'UCD');
M_.endo_names = char(M_.endo_names, 'muD');
M_.endo_names_tex = char(M_.endo_names_tex, '{{\mu}_{D}}');
M_.endo_names_long = char(M_.endo_names_long, 'muD');
M_.endo_names = char(M_.endo_names, 'L');
M_.endo_names_tex = char(M_.endo_names_tex, '{L}');
M_.endo_names_long = char(M_.endo_names_long, 'L');
M_.endo_names = char(M_.endo_names, 'GammaD');
M_.endo_names_tex = char(M_.endo_names_tex, '{\Gamma_D}');
M_.endo_names_long = char(M_.endo_names_long, 'GammaD');
M_.endo_names = char(M_.endo_names, 'KD');
M_.endo_names_tex = char(M_.endo_names_tex, '{K_D}');
M_.endo_names_long = char(M_.endo_names_long, 'KD');
M_.endo_names = char(M_.endo_names, 'Q');
M_.endo_names_tex = char(M_.endo_names_tex, '{Q}');
M_.endo_names_long = char(M_.endo_names_long, 'Q');
M_.endo_names = char(M_.endo_names, 'ID');
M_.endo_names_tex = char(M_.endo_names_tex, '{I_D}');
M_.endo_names_long = char(M_.endo_names_long, 'ID');
M_.endo_names = char(M_.endo_names, 'zeta');
M_.endo_names_tex = char(M_.endo_names_tex, '{\zeta}');
M_.endo_names_long = char(M_.endo_names_long, 'zeta');
M_.endo_names = char(M_.endo_names, 'SD');
M_.endo_names_tex = char(M_.endo_names_tex, '{\mathcal{S}_{D}}');
M_.endo_names_long = char(M_.endo_names_long, 'SD');
M_.endo_names = char(M_.endo_names, 'XD');
M_.endo_names_tex = char(M_.endo_names_tex, '{X_D}');
M_.endo_names_long = char(M_.endo_names_long, 'XD');
M_.endo_names = char(M_.endo_names, 'RD');
M_.endo_names_tex = char(M_.endo_names_tex, '{\mathcal{R}_{D}}');
M_.endo_names_long = char(M_.endo_names_long, 'RD');
M_.endo_names = char(M_.endo_names, 'f_fcn');
M_.endo_names_tex = char(M_.endo_names_tex, '{\left.       f\left( \cdot \right)            \right|}');
M_.endo_names_long = char(M_.endo_names_long, 'f_fcn');
M_.endo_names = char(M_.endo_names, 'f_fcn_prime');
M_.endo_names_tex = char(M_.endo_names_tex, '{\left.       f^‎{\prime}\left( \cdot \right)   \right|}');
M_.endo_names_long = char(M_.endo_names_long, 'f_fcn_prime');
M_.endo_names = char(M_.endo_names, 'g_fcn');
M_.endo_names_tex = char(M_.endo_names_tex, '{\left.       g\left( \cdot \right)            \right|}');
M_.endo_names_long = char(M_.endo_names_long, 'g_fcn');
M_.endo_names = char(M_.endo_names, 'g_fcn_prime');
M_.endo_names_tex = char(M_.endo_names_tex, '{\left.       g^‎{\prime}\left( \cdot \right)   \right|}');
M_.endo_names_long = char(M_.endo_names_long, 'g_fcn_prime');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_18_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_18\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_18_1');
M_.param_names = 'beta';
M_.param_names_tex = '\beta';
M_.param_names_long = 'beta';
M_.param_names = char(M_.param_names, 'alpha');
M_.param_names_tex = char(M_.param_names_tex, '\alpha');
M_.param_names_long = char(M_.param_names_long, 'alpha');
M_.param_names = char(M_.param_names, 'epsilon');
M_.param_names_tex = char(M_.param_names_tex, '\epsilon');
M_.param_names_long = char(M_.param_names_long, 'epsilon');
M_.param_names = char(M_.param_names, 'rho');
M_.param_names_tex = char(M_.param_names_tex, '\rho');
M_.param_names_long = char(M_.param_names_long, 'rho');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, '\delta');
M_.param_names_long = char(M_.param_names_long, 'delta');
M_.param_names = char(M_.param_names, 'chi');
M_.param_names_tex = char(M_.param_names_tex, '\chi');
M_.param_names_long = char(M_.param_names_long, 'chi');
M_.param_names = char(M_.param_names, 'vartheta');
M_.param_names_tex = char(M_.param_names_tex, '\vartheta');
M_.param_names_long = char(M_.param_names_long, 'vartheta');
M_.param_names = char(M_.param_names, 'gamma');
M_.param_names_tex = char(M_.param_names_tex, '\gamma');
M_.param_names_long = char(M_.param_names_long, 'gamma');
M_.param_names = char(M_.param_names, 'phi');
M_.param_names_tex = char(M_.param_names_tex, '\phi');
M_.param_names_long = char(M_.param_names_long, 'phi');
M_.param_names = char(M_.param_names, 'eta');
M_.param_names_tex = char(M_.param_names_tex, '\eta');
M_.param_names_long = char(M_.param_names_long, 'eta');
M_.param_names = char(M_.param_names, 'lambda');
M_.param_names_tex = char(M_.param_names_tex, '\lambda');
M_.param_names_long = char(M_.param_names_long, 'lambda');
M_.param_names = char(M_.param_names, 'rhozeta');
M_.param_names_tex = char(M_.param_names_tex, '{\rho}_{\zeta}');
M_.param_names_long = char(M_.param_names_long, 'rhozeta');
M_.param_names = char(M_.param_names, 'rhozeta2');
M_.param_names_tex = char(M_.param_names_tex, '{\rho}_{\zeta2}');
M_.param_names_long = char(M_.param_names_long, 'rhozeta2');
M_.param_names = char(M_.param_names, 'sigmazeta');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma}_{\zeta}');
M_.param_names_long = char(M_.param_names_long, 'sigmazeta');
M_.param_names = char(M_.param_names, 'zetabar');
M_.param_names_tex = char(M_.param_names_tex, '\overline{\zeta}');
M_.param_names_long = char(M_.param_names_long, 'zetabar');
M_.param_names = char(M_.param_names, 'M');
M_.param_names_tex = char(M_.param_names_tex, '\mathcal{M}');
M_.param_names_long = char(M_.param_names_long, 'M');
M_.param_names = char(M_.param_names, 'psi_N');
M_.param_names_tex = char(M_.param_names_tex, '\psi_N');
M_.param_names_long = char(M_.param_names_long, 'psi_N');
M_.param_names = char(M_.param_names, 'psi_I');
M_.param_names_tex = char(M_.param_names_tex, '\psi_I');
M_.param_names_long = char(M_.param_names_long, 'psi_I');
M_.param_names = char(M_.param_names, 'gg');
M_.param_names_tex = char(M_.param_names_tex, 'g^{BGP}');
M_.param_names_long = char(M_.param_names_long, 'gg');
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 27;
M_.param_nbr = 19;
M_.orig_endo_nbr = 26;
M_.aux_vars(1).endo_index = 27;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 19;
M_.aux_vars(1).orig_lead_lag = -1;
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('endogenous_growth_static');
erase_compiled_function('endogenous_growth_dynamic');
M_.lead_lag_incidence = [
 1 11 0;
 2 12 0;
 3 13 38;
 0 14 39;
 0 15 40;
 0 16 0;
 4 17 41;
 0 18 42;
 0 19 0;
 0 20 43;
 0 21 44;
 5 22 0;
 0 23 45;
 0 24 0;
 6 25 0;
 7 26 0;
 0 27 46;
 8 28 47;
 9 29 0;
 0 30 0;
 0 31 48;
 0 32 0;
 0 33 0;
 0 34 49;
 0 35 0;
 0 36 50;
 10 37 0;]';
M_.nstatic = 7;
M_.nfwrd   = 10;
M_.npred   = 7;
M_.nboth   = 3;
M_.nsfwrd   = 13;
M_.nspred   = 10;
M_.ndynamic   = 20;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(27, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(19, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 129;
M_.NNZDerivatives(2) = -1;
M_.NNZDerivatives(3) = -1;
close all;
do_estimate = 0; 
M_.params( 1 ) = 0.96;
beta = M_.params( 1 );
M_.params( 2 ) = 0.33;
alpha = M_.params( 2 );
M_.params( 3 ) = 0.5;
epsilon = M_.params( 3 );
M_.params( 4 ) = 1;
rho = M_.params( 4 );
M_.params( 5 ) = 0.10;
delta = M_.params( 5 );
M_.params( 6 ) = 1.5652;
chi = M_.params( 6 );
M_.params( 7 ) = 1+1/(1-M_.params(2));
vartheta = M_.params( 7 );
M_.params( 8 ) = 0.4031;
gamma = M_.params( 8 );
M_.params( 9 ) = 0.9898;
phi = M_.params( 9 );
M_.params( 10 ) = 0.9834;
eta = M_.params( 10 );
M_.params( 11 ) = 0.0041;
lambda = M_.params( 11 );
M_.params( 12 ) = 1.1;
rhozeta = M_.params( 12 );
M_.params( 13 ) = 0.1;
rhozeta2 = M_.params( 13 );
M_.params( 14 ) = 0.8905;
sigmazeta = M_.params( 14 );
M_.params( 15 ) = 9.8530;
zetabar = M_.params( 15 );
M_.params( 16 ) = 1.315756236185665;
M = M_.params( 16 );
M_.params( 17 ) = 21.2572;
psi_N = M_.params( 17 );
M_.params( 18 ) = 1;
psi_I = M_.params( 18 );
global pvarcoirfs_clean;
load 'pvar_coirfs_full';
pvarcoirfs_clean = pvarcoirfs;
%
% SHOCKS instructions
%
make_ex_;
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1)^2;
M_.sigma_e_is_diagonal = 1;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
set_dynare_seed(092677);
options_.irf = 11;
options_.loglinear = 1;
options_.nocorr = 1;
options_.nodisplay = 1;
options_.nograph = 1;
options_.nomoments = 1;
options_.order = 1;
options_.periods = 600;
var_list_=[];
info = stoch_simul(var_list_);
post_processing_irfs;                                                       
post_processing_irfs_plot;                                                  
post_processing_irfs_distance;                                              
plot_var_irfs;                                                              
if do_estimate == 0;
return;
else
x_start=[eta, gamma, phi, lambda, psi_N, rhozeta, rhozeta2, sigmazeta, zetabar];
x_start_unbounded = boundsINV(x_start);
H0 = 1e-2*eye(length(x_start)); 
H0 = 1e-1*eye(length(x_start)); 
crit = 1e-7; 
nit = 1000; 
nit = 50;
options_.nocorr=1;
options_.noprint=1;
options_.verbosity=0;
[fhat, params_unbounded] = csminwel(@distance_fcn     ,x_start_unbounded,H0,[],crit,nit);
[ params ] = bounds( params_unbounded );
set_param_value('eta', params(1) );
set_param_value('gamma', params(2) );
set_param_value('phi', params(3) );
set_param_value('lambda', params(4) );
set_param_value('psi_N', params(5) );
set_param_value('rhozeta', params(6) );
set_param_value('rhozeta2', params(7) );
set_param_value('sigmazeta', params(8) );
set_param_value('zetabar', params(9) );
options_.irf = 11;
options_.loglinear = 1;
options_.nocorr = 1;
options_.nodisplay = 1;
options_.nofunctions = 1;
options_.nograph = 1;
options_.nomoments = 1;
options_.noprint = 1;
options_.order = 1;
options_.periods = 600;
var_list_=[];
info = stoch_simul(var_list_);
post_processing_irfs;                                                       
post_processing_irfs_plot;                                                  
axis tight;
legend('initial','var', 'b', 'b', 'final');
disp('[eta, gamma, phi, lambda, psi_N, rhozeta, rhozeta2, sigmazeta, zetabar]')
params
x_start
end
save('endogenous_growth_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('endogenous_growth_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('endogenous_growth_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('endogenous_growth_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('endogenous_growth_results.mat', 'estimation_info', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
