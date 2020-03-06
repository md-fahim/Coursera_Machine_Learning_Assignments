function [X_poly] = polyFeatures(X, p)
%POLYFEATURES Maps X (1D vector) into the p-th power
%   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size m x 1) and
%   maps each example into its polynomial features where
%   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];
%


% You need to return the following variables correctly.
X_poly = zeros(numel(X), p);

% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th 
%               column of X contains the values of X to the p-th power.
%
% 

for i = 1:length(X)
    pRow = zeros(p,1); % 1 row matrix
    for j = 1: p
        pRow(j) = X(i).^j; % for each row in X we should increase the power upto p
    end    %pRow(j) because we would have one row and p columns 
    X_poly(i, :) = pRow;
end



% =========================================================================

end
