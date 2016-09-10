
%===================================================================%
%%%%            COMPARE MODEL AND VAR IRFs                       %%%%
%===================================================================%

% load VAR IRFs
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
% NOTE: if I update table in the future, ensure that the order is same
pvarcoirfs.model(1:11) = mod_irf_sp';
pvarcoirfs.model(12:22) = mod_irf_rd';
pvarcoirfs.model(23:33) = mod_irf_tfp';
pvarcoirfs.model(34:44) = mod_irf_gdp';

% Scale by 100
pvarcoirfs.model = pvarcoirfs.model*100;

% drop table rows with 0 standard errors
pvarcoirfs(pvarcoirfs.se == 0, :) = [];

% Calculate the distance between irfs
% Use same formula as CEE
DDD = pvarcoirfs.irf - pvarcoirfs.model;
VVV = diag(pvarcoirfs.se.*pvarcoirfs.se); % create diagonal matrix of the variances
irf_distance = DDD'* inv(VVV) * DDD;

% TODO: is this what we want?


% TODO: plot a comparison between model and var irfs

