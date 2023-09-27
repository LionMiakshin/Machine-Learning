function [idx, centers] = spectralClustering(adjMatrix, numClusters)
    % Compute the degree matrix
    degreeMatrix = diag(sum(adjMatrix, 2));

    % Compute the Laplacian matrix
    laplacianMatrix = degreeMatrix - adjMatrix;

    % Compute eigenvalues and eigenvectors
    [eigenvectors, eigenvalues] = eig(laplacianMatrix);
    [~, indices] = sort(diag(eigenvalues));
    kSmallestEigenvectors = eigenvectors(:, indices(1:numClusters));

    % Normalize the eigenvectors
    kSmallestEigenvectors = bsxfun(@rdivide, kSmallestEigenvectors, sqrt(sum(kSmallestEigenvectors.^2, 2)));

    % Apply KMeans on normalized eigenvectors
    [idx, centers] = kmeans(kSmallestEigenvectors, numClusters);
end
