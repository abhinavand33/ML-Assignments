% function out = mapFeature(X1, X2)
% % MAPFEATURE Feature mapping function to polynomial features
% %
% %   MAPFEATURE(X1, X2) maps the two input features
% %   to quadratic features used in the regularization exercise.
% %
% %   Returns a new feature array with more features, comprising of 
% %   X1, X2, X1.^2, X2.^2, X1*X2, X1*X2.^2, etc..
% %
% %   Inputs X1, X2 must be the same size
% %
% 
% degree = 6;
% out = ones(size(X1(:,1)));
% for i = 1:degree
%     for j = 0:i
%         out(:, end+1) = (X1.^(i-j)).*(X2.^j);
%     end
% end
% 
% end


function out = mapFeature(X1, X2)
% MAPFEATURE Feature mapping function to polynomial features
%
%   MAPFEATURE(X1, X2) maps the two input features
%   to polynomial features up to the 6th degree.
%
%   Returns a new feature array with more features, comprising of 
%   X1, X2, X1.^2, X2.^2, X1*X2, X1*X2.^2, etc..
%
%   Inputs X1, X2 must be the same size
%

% Set the degree of the polynomial features
degree = 6;

% Initialize the output matrix with a column of ones (bias term)
out = ones(size(X1));

% Loop over each degree
for i = 1:degree
    for j = 0:i
        % Compute the polynomial feature (X1^(i-j) * X2^j)
        out(:, end+1) = (X1.^(i-j)) .* (X2.^j);
    end
end

end

