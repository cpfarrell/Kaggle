function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


m = length(y); % number of training examples
h_theta = X * theta;
g = 1. ./ (1 + e .^ (-1 * h_theta));
J = sum(y .* log(g) + (1 - y) .* log (1 - g) );
J = -1 * J / (m);


% =========================================================================

end
