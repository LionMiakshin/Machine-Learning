function [adjmatrix]= createMatrix(D,Y)

  % Yarin Ackerman 318666443
  % Lion Miakshin 315992735

  echo off;
  max=0

  for i=1:size(D,1)
    if(D(i)>max)
      max=D(i);
      endif
  endfor

    for i=1:size(Y,1)
    if(Y(i)>max)
      max=Y(i);
      endif
  endfor

  adjmatrix=zeros(max,max);

  for i=1:size(D,1)

    adjmatrix(D(i),Y(i))=1;
    adjmatrix(Y(i),D(i))=1;

endfor

end


