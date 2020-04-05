function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

for i=1:length(X)
    if y(i)==1
        plot(X(i,1),X(i,2),'k+','Markersize',5,'Linewidth',1);
    else
        plot(X(i,1),X(i,2),'yo','Markersize',5,'Linewidth',1);
    end
end

        
        

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%









% =========================================================================



hold off;

end
