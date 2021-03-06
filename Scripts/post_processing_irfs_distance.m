
%===================================================================%
%%%%            COMPARE MODEL AND VAR IRFs                       %%%%
%===================================================================%

% create a local copy of VAR IRFs (pvarcoirfs_clean is a global, so I only
% have to load it once)
pvarcoirfs = pvarcoirfs_clean;

% Select the model irfs
ii = find(ismember(IRnames_dynare, 'R'));
mod_irf_rd = IR_dynare(ii,:);

ii = find(ismember(IRnames_dynare, 'A'));
mod_irf_tfp = IR_dynare(ii,:);

ii = find(ismember(IRnames_dynare, 'Y'));
mod_irf_gdp = IR_dynare(ii,:);

ii = find(ismember(IRnames_dynare, 'S'));
mod_irf_sp = IR_dynare(ii,:);

%% Add model IRFs to table

% drop all IRF steps beyond irf_length
% to modify this, go to estimation_init.m
irf_length = options_.EST.irf_length;
pvarcoirfs(pvarcoirfs.step >= irf_length, :) = [];

% Add model IRFs
pvarcoirfs(strmatch('rd : sp', pvarcoirfs.id1), :).model    = mod_irf_sp';
pvarcoirfs(strmatch('rd : rd', pvarcoirfs.id1), :).model    = mod_irf_rd';
pvarcoirfs(strmatch('rd : tfp', pvarcoirfs.id1), :).model   = mod_irf_tfp';
pvarcoirfs(strmatch('rd : gdp', pvarcoirfs.id1), :).model   = mod_irf_gdp';

% drop table rows with 0 standard errors
% pvarcoirfs(pvarcoirfs.se == 0, :) = [];

% rather than get rid for observations with 0 se, just give them a very small se
pvarcoirfs(pvarcoirfs.se == 0, :).se   = ones(size(pvarcoirfs(pvarcoirfs.se == 0, :).se)) * 0.0001;

% Scale by 100
pvarcoirfs.model = pvarcoirfs.model*100;
pvarcoirfs.se_scaled = pvarcoirfs.se*100;
%pvarcoirfs.variance = pvarcoirfs.se_scaled.^2;

% drop sp 
pvarcoirfs(strmatch('rd : sp', pvarcoirfs.id1), :) = [];

% drop gdp
pvarcoirfs(strmatch('rd : gdp', pvarcoirfs.id1), :) = [];

% Calculate the distance between irfs
% Use same formula as CEE
DDD = pvarcoirfs.weight.*(pvarcoirfs.irf - pvarcoirfs.model);
VVV = diag(pvarcoirfs.se_scaled.*pvarcoirfs.se_scaled); % create diagonal matrix of the variances
irf_distance = DDD'* inv(VVV) * DDD;

%% Add growth rate

% Removed: the growth_rate is now pre-set

% Also, this was causing an issue because the growth rate was already in
% levels, then logged. Perhaps caused by computing the ss before computing
% the irfs
% ss = exp(oo_.steady_state);
% growth_rate = ss(1);

% irf_distance = 0.001 * irf_distance_sub + abs( log(growth_rate) - log(1.0118) )*10e+10;
% disp(growth_rate)

