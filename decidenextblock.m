% decidenextblock.m
% only do this if decision is not already made
if nextb(c) == b
    i = i2(b)
    if rand < prchoice
        jnext = 1 + flor(rand * nbout(i));
        nextb(c) = nbout(i, jnext);
    else
        xdvec = xd(c) - xi(i);
        ydvec = yd(c) - yi(i);
        dp = ux(bout(i, 1:nbout(i))) * xdvec + uy(bout(i, 1:nbout(i))) * vdvec;
        [dpmax, jnext] = max(dp);
        nextb(c) = bout(i, jnext);
    end
end
