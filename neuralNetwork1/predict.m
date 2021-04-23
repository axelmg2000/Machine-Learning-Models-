function p = predict(Theta1, Theta2, X)
    %PREDICT Predict the label of an input given a trained neural network
    %   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
    %   trained weights of a neural network (Theta1, Theta2)

    % Useful values
    m = size(X, 1);
    num_labels = size(Theta2, 1);

    % You need to return the following variables correctly 
    p = zeros(size(X, 1), 1);

    % ====================== YOUR CODE HERE ======================
    % Instructions: Complete the following code to make predictions using
    %               your learned neural network. You should set p to a 
    %               vector containing labels between 1 to num_labels.
    %
    % Hint: The max function might come in useful. In particular, the max
    %       function can also return the index of the max element, for more
    %       information see 'help max'. If your examples are in rows, then, you
    %       can use max(A, [], 2) to obtain the max for each row.
    %
    X = [ones(m, 1) X];
    
    for i = 1:m
        a1 = X(i,:); % Se obtienen los datos de cada fila (representan una imagen)
        a2 = sigmoid(Theta1 * a1'); % a2 es una matriz 25 x 1 con las salidas de cada unidad de la layer 2
        a2 = [1; a2]; % Se le agrega un 1 al inicio para que sea 26 x 1
        a3 = sigmoid(Theta2 * a2); % a3 es una matriz 10 x 1 con la probabilidd de que sea cada dígito
        [vec, index] = max(a3); % Se obtiene índice del valor mas alto (probabilidad más alta)
        p(i) = index; % Entonces los datos correspondientes al indice i equivalen al numero index
    end
    
    
    








    % =========================================================================


end
