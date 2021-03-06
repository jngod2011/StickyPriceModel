function [ x_unbounded ] = boundsINV( params )
    % csminwel solves an unconstrained minimization problem.
    % this function converts the bounded params to an unbounded guess
    % Inverse function is bounds.m 
    
    % IMPORTANT: Bounds are now defined in estimation_init.m
    
    % This file no longer needs to be edited
    
    global options_
    variables = options_.EST.variables;
    LB = options_.EST.LB;
    UB = options_.EST.UB;
    x_unbounded = NaN(size(variables));
    
    % For each parameter we are estimating, set the bounds accordingly
    for iii = 1:length(variables)
        lb = LB.(char(variables(iii)));
        ub = UB.(char(variables(iii)));
        x_unbounded( iii ) = modtomin_ab(params( iii ), lb, ub);
    end
    
%     x_unbounded(1) = modtomin_ab(params(1), 0.1, 0.9); % eta (if eta is large, then ND becomes larger than YD in ss. Thus CD is negative)
%     x_unbounded(2) = modtomin_ab(params(2), 0.7, 0.95); % phi
%     x_unbounded(3) = modtomin_ab(params(3), 0.01, 0.5); % lambda_ss
%     x_unbounded(4) = modtomin_ab(params(4), 0.0001, 0.99); % rhozeta
%     x_unbounded(5) = modtomin_ab(params(5),  .05, 10); % sigmazeta If too small, I get "Warning: Matrix is close to singular or badly scaled. Results may be inaccurate."

    % add: gamma, psi_N
    
        
%     x_unbounded(2) = modtomin_ab(params(2), 0.00001, 0.9999); % gamma
%     x_unbounded(4) = modtomin_ab(params(4), 0.005, 100); % lambda_bar
%     x_unbounded(5) = modtomin_ab(params(5), 0, 100000000); % psi_N
%     x_unbounded(7) = modtomin_ab(params(7), 0.0001, 0.99); % rhozeta2
%     % x_unbounded(9) = modtomin_ab(params(9),  .1, 10); % zetabar
%     x_unbounded(9)= modtomin_ab(params(9), .01, .99); % rho_lambda

    

end
