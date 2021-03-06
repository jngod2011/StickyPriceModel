function F = fbnd(x)
% Root finding function used by the steady state solver
% Computes the residuals given an initial guess

alpha = []; % Needed because otherwise matlab thinks alpha is a function
load TEMP.mat % This might not be the cleanest way to import all the params

g_fcn = 0;
g_fcn_prime = 0;
f_fcn = 0;
f_fcn_prime = 0;

%% Guess Two SS Values
g = 1.0118; % x(1);
zetabar = x(1);
lambda = x(2);

%% Sticky Price Model (September Update)
ss_given_g_and_lambda;

%% Residuals: Equations 318 and 322
F(1) = (-Q + Lambda * ((g* (vartheta - 1) *YDW * alpha)/(mkup * KD * vartheta) + Q * (1 - delta)));
F(2) = (( chi * GammaD * L^epsilon * (1/UCD) * (CD - GammaD * ( chi / (1+epsilon)) * L^(1+epsilon))^(-rho) ) - ( (1/mkup) * ((vartheta - 1)/vartheta) * (1 - alpha) * (YD/L)));

% Sometimes UCD gets so small (1e-400) that it becomes 0. In that case, F(2) becomes NaN when it should just approach Inf
% BUT: this doesn't help, because then the derivative of fbnd() is zero.
if isnan(F(2))
    F(2) = 1e+100;
end

