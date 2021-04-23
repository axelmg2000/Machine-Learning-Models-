function [J, grad] = costFunctionReg(theta, X, y, lambda)
    %COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
    %   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
    %   theta as the parameter for regularized logistic regression and the
    %   gradient of the cost w.r.t. to the parameters. 

    % Initialize some useful values
    m = length(y); % number of training examples

    % You need to return the following variables correctly 
    J = 0;
    grad = zeros(size(theta));

    % ====================== YOUR CODE HERE ======================
    % Instructions: Compute the cost of a particular choice of theta.
    %               You should set J to the cost.
    %               Compute the partial derivatives and set grad to the partial
    %               derivatives of the cost w.r.t. each parameter in theta
    
    J = (-1 * y .* log(sigmoid(X * theta)) - ((1 - y) .* log(1 - (sigmoid(X * theta))))); % First part of cost function
    J = 1 / m * sum(J); % Applying sumation
    
    % Now the regularized component of the cost function
    J = J + ((lambda / (2 * m)) * sum(theta .^2));
    
    
    % Gradient of cost vector calling sigmoid function defined in other
    % file
    for j = 1:length(theta)
        if j == 1
            grad(j) = 1 / m * sum((sigmoid(X * theta) - y) .* X(:,j));
        else
            grad(j) = (1 / m * sum((sigmoid(X * theta) - y) .* X(:,j))) + lambda / m * theta(j);
        end
    end






    % =============================================================

end
