function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha
%   alpha是学习率  num_iters是迭代次数。
% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);  %用于记录每一次迭代的代价函数值
thetaD = size(theta);    
for iter = 1:num_iters
    %先初始化
    temptheta = zeros(thetaD(1),thetaD(2)); %因为在计算过程中theta会变动，使用一个temp暂存
    error = X*theta - y;   
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    for j = 1 :length(theta)
        
        term = error.*(X(:,j));
        temptheta(j,1) = theta(j,1) - ((alpha/m)*sum(term));
    end
    theta = temptheta;

    % ===========================================================
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
