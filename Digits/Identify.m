%% Digits

%% Initialization
clear ; close all; clc

%% ======================= Part 2: Plotting =======================
fprintf('Plotting Data ...\n')
data = dlmread('trainDigitsSmall.csv');
pixels = data(:, 2:785); y = data(:, 1);
%columns_to_remove = find(sum(pixels) == 0);
%pixels(:,columns_to_remove)=[];
%rows_to_remove = find(sum(pixels') == 0);
%pixels(rows_to_remove,:)=[];
%columns(pixels)
%rows(pixels)

l = Lines(pixels, y);

m = rows(pixels);

totalPixels = sum(pixels')';

%% =================== Part 3: Gradient descent ===================
fprintf('Running Gradient Descent ...\n')

regTotalPixels = featureNormalize(totalPixels);
%fewPixels = [rows(pixels), colums(pixels)/17]
for icolumn = 1:columns(pixels)
    if(mean(pixels(:, icolumn))>0)
         regPixels(:, icolumn) = featureNormalize(pixels(:, icolumn));
    else 
    endif
end;
%plotData(y, regPixels);


X = [ones(m, 1), regPixels(:,:), regTotalPixels(:,:)]; % Add a column of ones to x
theta = zeros(2 + columns(regPixels), 1); % initialize fitting parameters


zeros = y == 0;
rowones = y == 1;
twos = y == 2;
threes = y == 3;
fours = y == 4;
fives = y == 5;
sixes = y == 6;
sevens = y == 7;
eights = y == 8;
nines = y== 9;

% Some gradient descent settings
iterations = 1500;
alpha = 0.01;

% compute and display initial cost
computeCost(X, rowones, theta);

% run gradient descent
theta = gradientDescent(X, rowones, theta, alpha, iterations);

% print theta to screen
fprintf('Theta found by gradient descent: ');
fprintf('%f %f \n', theta(1), theta(2));

%plotData(y, prediction(X, theta));
