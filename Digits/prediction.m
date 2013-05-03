function g = prediction(X, theta)
%PREDICTION Compute prediction for logistical regression
%   g = PREDICTION(X, y, theta) computes the prediction with a given theta as the
%   parameter for logistical regression to fit the data points in X and y

% Initialize some useful values

% You need to return the following variables correctly 
h_theta = X * theta;
g = 1. ./ (1 + e .^ (-1 * h_theta));

% =========================================================================

end
