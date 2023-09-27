function [probabilityMatrix] = createProbabilityMatrix(adjMatrix)

  % Yarin Ackerman 318666443
  % Lion Miakshin 315992735


  probabilityMatrix=zeros(size(adjMatrix,1),size(adjMatrix,1));

  count=0;
  c=0

  for i=1:size(adjMatrix,1)

    for j=1:size(adjMatrix,1)

      if(adjMatrix(i,j)==1)

        count++;
      endif

 endfor

 if count==0
   c++;
 endif

     for j=1:size(adjMatrix,1)

      if(adjMatrix(i,j)==1)

        probabilityMatrix(i,j)=(1/count);
      endif
    endfor

    count=0;
  endfor

  disp(c);

