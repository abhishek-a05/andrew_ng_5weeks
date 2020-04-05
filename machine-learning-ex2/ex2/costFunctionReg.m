function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
grad=zeros(size(X,2),1);
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h_theta=sigmoid(X*theta);
temp=0;
cost=-(1/m)*((y')*log(h_theta)+((1-y)')*log(1-h_theta));
for i=2:size(X,2)
    temp=temp+(theta(i)^2);
end

J=cost+(lambda/(2*m))*temp;


for i=1:size(X,2)
    if i==1
        grad(i)=(1/m)*((X(:,i)')*(h_theta-y));
    else
        grad(i)=(1/m)*((X(:,i)')*(h_theta-y))+(lambda/m)*theta(i);
    end
end








% =============================================================

end
