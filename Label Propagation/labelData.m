function [red,blue,black] = labelData(probMatrix,labelOne,labelTwo)

  % Yarin Ackerman 318666443
  % Lion Miakshin 315992735


  red = zeros(size(probMatrix,1),1);
  redCounter=1;

  blue = zeros(size(probMatrix,1),1);
  blueCounter=1;

  black = zeros(size(probMatrix,1),1);
  blackCounter=1;

  for i=1:size(probMatrix,1)

    if probMatrix(i,labelOne)>probMatrix(i,labelTwo)

      red(redCounter)=i;
      redCounter=redCounter+1;
      elseif probMatrix(i,labelOne)<probMatrix(i,labelTwo)

      blue(blueCounter)=i;
      blueCounter=blueCounter+1;

      elseif probMatrix(i,labelOne)==0.5

      red(redCounter)=i;
      redCounter=redCounter+1;

      else
      black(blackCounter)=i;
      blackCounter=blackCounter+1;

    endif

endfor


    red = red(1:redCounter - 1);
    blue = blue(1:blueCounter - 1);
    black = black(1:blackCounter - 1);

