function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

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


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
