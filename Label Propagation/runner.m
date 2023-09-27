function runner()

  % Yarin Ackerman 318666443
  % Lion Miakshin 315992735

  [D,Y]=loadData("edges.txt");
  [adjMatrix]=createMatrix(D,Y);
  [probabilityMatrix]=createProbabilityMatrix(adjMatrix);
  [probabilityMatrix,tempAdjMatrix,labelOne,labelTwo]=createLabeledData(probabilityMatrix,adjMatrix);
  [probabilityMatrix]=multiplyMatrix(tempAdjMatrix,probabilityMatrix,labelOne,labelTwo);
  [red,blue,black] = labelData(probabilityMatrix,labelOne,labelTwo);
  [Q] = modularity(adjMatrix,red,blue);
end
