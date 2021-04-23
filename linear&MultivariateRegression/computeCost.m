function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values


% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
pred = X * theta; % Ahora pred es una matriz mx1 con las predicciones 
sumatoria = sum((pred - y).^2); % sumatoria tiene la suma de las predicciones elevadas al cuadrado
J = sumatoria / (2 * length(X)); % falta dividir sumatoria entre 2*m (numero de ejemplos de entrenamiento)

 


% =========================================================================

end
