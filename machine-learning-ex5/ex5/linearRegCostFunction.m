function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
grad=zeros(size(theta));
% You need to return the following variables correctly 


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

h_theta=X*theta;

J=(1/(2*m))*(sum((h_theta-y).^2))+(lambda/(2*m))*sum(theta(2:end).^2);

temp=theta;
temp(1)=0;
for i=1:size(theta,1)
    
    grad(i)=(1/m)*((X(:,i)')*(h_theta-y))+(lambda/m)*temp(i);
end













% =========================================================================

grad = grad(:);

end
