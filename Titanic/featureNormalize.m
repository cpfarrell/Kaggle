function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the median value of each feature is 0 and the standard deviation
%   is 1.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

mu = median(X);
sigma = std(X);


Medians = ones(rows(X), 1) * mu;
RMS = ones(rows(X), 1) * sigma;

X_norm = (X - Medians) ./ RMS;

% ============================================================

end
