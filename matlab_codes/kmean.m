%% Data
[row, col, dims] = size(indian_pines_corrected);
x = double(reshape(indian_pines_corrected, row*col, dims));

%% K-means with euclidean distance
idx = kmeans(x, 16);

% Euclidean distance for all classes
figure(1)
for i=1:16
scatter3(x((idx==i),1), x((idx==i),2),x((idx==i),3));
hold on
end
title('K-means with euclidean distance for all classes')

% Euclidean distance for classes 1 and 2 
figure(2)
scatter3(x((idx==1),1), x((idx==1),2),x((idx==1),3), 'r+')
hold on
scatter3(x((idx==2),1), x((idx==2),2),x((idx==2),3), 'bo')
legend('1', '2')
title('K-means with euclidean distance for classes 1 and 2')

%% K-means with cosine distance
idx = kmeans(x, 16, 'Distance', 'cosine');

% cosine distance for all classes
figure(3)
for i=1:16
scatter3(x((idx==i),1), x((idx==i),2),x((idx==i),3));
hold on
end
title('K-means with cosine distance for all classes')

% cosine distance for classes 1 and 2
figure(4)
scatter3(x((idx==1),1), x((idx==1),2),x((idx==1),3), 'r+')
hold on
scatter3(x((idx==2),1), x((idx==2),2),x((idx==2),3), 'bo')
legend('1', '2')
title('K-means with cosine distance for classes 1 and 2')
