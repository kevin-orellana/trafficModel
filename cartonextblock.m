% cartonextblock.m
firstcar(b) = nextcar(b);
if (c == lastacr(b))
    lastcar(b) = 0
end

if (lastcar(nextb(c)) == 0)
    firstcar(nextb(c)) = c;
else
    nextcar(lastcar(nextb(c))) = c;
end

lastcar(nextb(c)) = c;
nextcar(c) = 0;
% this is why we previously set nextc = nextcar(c)
x(c) = xi(i1(nextb(c))) + p(c) * ux(nextb(c));
y(c) = yi(i1(nextb(c))) + p(c) * uy(nextb(c));

