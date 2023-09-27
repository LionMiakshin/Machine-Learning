function [D,Y] = loadData(filename)

  % Yarin Ackerman 318666443
  % Lion Miakshin 315992735

    data = load(filename);
    [rows fs]=size(data);
    D = data(1:rows, 1:fs-1);
    Y = data(1:rows, fs);

    format short g;
    %ans;

    %plot(D,Y,'o-black');

    end
