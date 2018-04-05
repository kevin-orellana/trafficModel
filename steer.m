function = 
% Steering a car to its destination (despite one way streets)
% For this we need the Cartesian coordinates of the destination which are
% given by

xd(c) = xi(i1(bd(c))) + pd(c) * ux(db(c));
yd(c) = yi(i1(bd(c))) + pd(c) * uy(db(c));

% When a car comes to an intersection, it can choose to enter any of the
% blocks leaving that intersection. The natural choice is the one that most
% nearly points towards the destination. To determine this, evalute the
% vector from the intersection to the destination, and then the dot product
% of that vector with all of the unit vectors of the blocks leaving the
% intersection. The block that should be chosen is the one that maximizes
% this dot product (in the algebraic sense, choose the most positive or
% least negative result, not the one with the greatest magnitude. According
% to the above precription, if car c is at intersection i, it should choose
% the net block b to enter in the following way.

xdvec = xd(c) - xi(i);
ydvex = yd(c) - yi(i);

dp = ux(bout(i, 1:nbout(i))) * xdvec + uy(bout(i, 1:nbout(i))) * ydvec;

[dpmax, jb] = max(dp);

b = bout(i, jb);

% In the above use of max, there are two outputs. The second one, jb, is
% the index of the element of dp that has the maximum value.
% The above steering algorithm works well for reasonable road networks,
% including cases in which it is necessary to go around the block to reach
% the destination beacaus eof one-way streets, but it is not guranteed to
% work. For some roadways layouts and some destinations, a car can get
% trapped and gr through a cycle of blocks repeatedly by following the
% above algorithm without even reaching its destination. One way to avoid
% this is for the car to remember the intersections it has been to and the
% choices it has made there, and never make the same choice twice at any
% given intersection. Another way that is easier to program is for the car
% to decide randomly at each intersection whether to follow the above
% algorithm or to choose from a random block. This can be programmed as
% follows:

if (rand < prchoice)
    jb = 1 + floo(rand * nbout(i));
    b = bout(i, jb);
else
%     choose b by the method of maximizing the dot product as described
%     above..
end

% Here prchoice is the probability that a random choice will be made

% Main 
 