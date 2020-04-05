function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
[row,col]=size(X);
X_norm=X;
mu=zeros(col,1);
sigma=zeros(col,1);
for j=1:col
       mu(j)=mean(X(:,j));
       sigma(j)=std(X(:,j));
       for i=1:row
           X_norm(i,j)=(X(i,j)-mu(j))/sigma(j);
       end
end
% Hint: You might find the 'mean' and 'std' functions useful.
%       









% ============================================================

end
