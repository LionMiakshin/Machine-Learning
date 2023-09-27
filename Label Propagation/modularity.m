function [Q] = modularity(adjMatrix, red, blue)

  Q=0;

  numOfEdges = nnz(adjMatrix);

  for i=1:(size(red,1)-1)

    for j=(i+1):size(red,1)

        iEdges = nnz(adjMatrix(red(i),:));
        jEdges = nnz(adjMatrix(red(j),:));

        if(adjMatrix(red(i),red(j))==1)

          Q=Q+(1-(iEdges*jEdges))/(2*numOfEdges);

        elseif(adjMatrix(red(i),red(j))==0)

          Q=Q+(0-(iEdges*jEdges))/(2*numOfEdges);

      endif
    endfor
  endfor

    for i=1:(size(blue,1)-1)

      for j=(i+1):size(blue,1)

        iEdges = nnz(adjMatrix(blue(i),:));
        jEdges = nnz(adjMatrix(blue(j),:));

        if(adjMatrix(blue(i),blue(j))==1)

          Q=Q+(1-(iEdges*jEdges))/(2*numOfEdges);

        elseif(adjMatrix(blue(i),blue(j))==0)

          Q=Q+(0-(iEdges*jEdges))/(2*numOfEdges);

      endif
    endfor
  endfor


  disp(Q);

