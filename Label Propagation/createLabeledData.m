function [probabilityMatrix,adjacencyMatrix,labelOne,labelTwo] = createLabeledData(probMatrix,adjMatrix)

  % Yarin Ackerman 318666443
  % Lion Miakshin 315992735

  labelOne = 1; % randi([1, size(probMatrix,1)]);

  do
  labelTwo = 2; %randi([1, size(probMatrix,1)]);

  until labelOne != labelTwo

  adjacencyMatrix=adjMatrix;

  for i=1:size(probMatrix,1)

    probMatrix(labelOne,i)=0;
    adjacencyMatrix(labelOne,i)=0;
    probMatrix(labelTwo,i)=0;
    adjacencyMatrix(labelTwo,i)=0;

  endfor

  probMatrix(labelOne,labelOne)=1;
  adjacencyMatrix(labelOne,labelOne)=1;

  probMatrix(labelTwo,labelTwo)=1;
  adjacencyMatrix(labelTwo,labelTwo)=1;

  probabilityMatrix=probMatrix;






