function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values;
% number of training examples
m=length(y);

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
J_history=zeros(num_iters);
temp=zeros(size(X,2));
for i=1:num_iters
    h_theta=X*theta;
    for j=1:size(X,2)
        temp(j)=theta(j)-(alpha)*(1/m)*sum((X(:,j)')*(h_theta-y));
    end
    for j=1:size(X,2)
        theta(j)=temp(j);
    end
    % ============================================================

    % Save the cost J in every iteration    
    J_history(i) = computeCostMulti(X, y, theta);

end

end
