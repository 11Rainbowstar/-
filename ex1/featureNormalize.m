function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));  %定义一个与特征个数相等的行向量，初始值全为0
sigma = zeros(1, size(X, 2));     %这个一样

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
% Hint: You might find the 'mean' and 'std' functions useful.
%       
%
%对每一维特征都计算其平均值并分别存放到mu中
for i = 1 : size(X,2)
    mu(1,i) = mean(X(:,i));
end
%再将每一列的特征值都减去相应的平均值
for i = 1:size(X,2)
    for j = 1:size(X,1)
        X(j,i) = X(j,i) - mu(1,i);
    end
end
%再对每一个特征计算标准差并分别存放到sigma中
for i = 1:size(X,2)
    sigma(1,i) = std(X(:,i));
end
%最后将每个特征值除以相应的标准差
for i = 1 : size(X,2)
    for j = 1:size(X,1)
        X(j,i) = X(j,i)/sigma(1,i);
    end
end
X_norm = X

    



    








% ============================================================

end
