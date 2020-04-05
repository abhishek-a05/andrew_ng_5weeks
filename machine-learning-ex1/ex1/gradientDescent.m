function [theta, J_history,temp] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples


    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
theta=theta(:);
temp=zeros(num_iters,size(theta,1));
J_history=size(num_iters);
for i=1:num_iters
    h_theta=X*theta;
    for j=1:size(theta,1)
        temp(i,j)=theta(j)-(alpha)*(1/m)*sum((X(:,j)')*(h_theta-y));
    end
    for j=1:size(theta,1)
        theta(j)=temp(i,j);
    end
    J_history(i)=computeCost(X,y,theta);
end

    % ============================================================

    % Save the cost J in every iteration    


end
