% choosedestination.m
% use method of regection to choose a block with probability proportional
% to its length and with p uniformly distributed in that block

bd(nc) = 1 + floor(rand * nb);
pd(nc) = rand * Lmax;
while (pd(nc) >= L(bd(nc)))
    bd(nc) = 1 + floor(rand * nb);
    pd(nc) = rand * Lmax;
end

xd(nc) = xi(i1(bd(nc))) + pd(nc) * ux(bd(nc));
yd(nc) = yi(i1(bd(nc))) + pd(nc) * uy(bd(nc));

% Lmax = max(L)
