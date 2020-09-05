function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
% a = 0;
% num_a=0;
% b = 0;
% num_b=0;
% c = 0;
% num_c=0;
% for i = 1:length(X)
%     if idx(i) == 1
%         a = a+X(i,:);
%         num_a=num_a+1;
%     elseif idx(i) == 2
%         b = b+X(i,:);
%         num_b=num_b+1;
%     else 
%         c = c+X(i,:);
%         num_c=num_c+1;
%     end
% end
% 
% centroids = [a/num_a;b/num_b;c/num_c];



count_c = zeros(K);
for kk = 1:K
    for i = 1:m
        if idx(i) == kk
            centroids(kk,:) = centroids(kk,:)+ X(i,:);
            count_c(kk) =  count_c(kk)+ 1;
        end
    end
    centroids(kk,:) = centroids(kk,:)/ count_c(kk);
end

            
    






% =============================================================


end

