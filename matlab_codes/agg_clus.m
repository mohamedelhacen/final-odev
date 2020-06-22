%% Data
[row, col, dims] = size(indian_pines_corrected);
x = double(reshape(indian_pines_corrected, row*col, dims));

%% linkage with single method
z = linkage(x, 'single');
c = cluster(z,'maxclust',16);

% Agglomerative clustering for classes 1 and 2
figure(1)
scatter3(x(c==1,1),x(c==1,2),x(c==1,3))
hold on
scatter3(x(c==2,1),x(c==2,2),x(c==2,3))
title('Agglomerative clustering for classes 1 and 2 with single method')

% Agglomerative clustering for all classes
figure(2)
for i = 1:16
scatter3(x(c==i,1),x(c==i,2),x(c==i,3))
hold on
end
title('Agglomerative clustering for all classes with single method')

% Dendrogram
figure(3)
dendrogram(z)
title('Dendrogram with single method')

%% Linkage with ward method

z = linkage(x, 'ward');
c = cluster(z,'maxclust',16);

% Agglomerative clustering for classes 1 and 2
figure(4)
scatter3(x(c==1,1),x(c==1,2),x(c==1,3))
hold on
scatter3(x(c==2,1),x(c==2,2),x(c==2,3))
title('Agglomerative clustering for classes 1 and 2 with ward method')

% Agglomerative clustering for all classes
figure(5)
for i= 1:16
scatter3(x(c==i,1),x(c==i,2),x(c==i,3))
hold on
end
title('Agglomerative clustering for all classes with ward method')

% Dendrogram
figure(6)
dendrogram(z)
title('dendrogram with ward method')