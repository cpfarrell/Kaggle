%Logistic regression of titanic example on Kaggle

%% Initialization
clear ; close all; clc

%%Load data
data = csvread('trainclean.csv');
%Remove first row which is name of variables
data(1, :) = [];
size(data)

y = data(:, 1);
X = data;

%Remove solution column
X(:, 1) = [];

%Normalize features
[X mu sigma] = featureNormalize(X);

%  Setup the data matrix appropriately
[m, n] = size(X);

X(1:5, :)
