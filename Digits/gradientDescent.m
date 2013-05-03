function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters


    h_theta = X * theta;
    g = 1. ./ (1 + e .^ (-1 * h_theta));
    diff = (g - y);
    shift = X' * diff;
    adjust = shift * alpha / m;
    theta = theta - adjust;


%    if(iter==1000)
%        [g(:,1), y(:, 1), diff(:, 1)]


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
end

end
