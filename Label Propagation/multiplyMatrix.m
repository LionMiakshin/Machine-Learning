function [finalMatrix] = multiplyMatrix(adjMatrix,probMatrix,labelOne,labelTwo)

  % Yarin Ackerman 318666443
  % Lion Miakshin 315992735



  for i=1:1000

    probMatrix*=probMatrix;

  endfor

  finalMatrix=probMatrix*adjMatrix;

 i=0;
