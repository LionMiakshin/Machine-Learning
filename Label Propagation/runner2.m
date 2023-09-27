function runner2()
     % Yarin Ackerman 318666443
   % Lion Miakshin 315992735

   [D, Y] = loadData("edges.txt");
   [adjMatrix] = createMatrix(D, Y);

   numClusters = 4;

  % Perform spectral clustering
  [idx, centers] = spectralClustering(adjMatrix, numClusters);

  % Display cluster assignments and cluster centers
  disp("Cluster Assignments:");
  disp(idx');
  disp("Cluster Centers:");
  disp(centers);

  end
