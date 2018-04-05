% insertnewcar.m
c = firstcar(b);
if (c == 0 || p(nc) > p(c))
    nextcar(nc) = c;
    firstcar(b) = nc;
    if ((c == 0)
        lastcar(b) = nc;
    end
elseif p(nc) <= p(lastcar(b))
    nextcar(lastcar(b)) = nc;
    lastcar(b) = nc;
else
    ca = c
    c = nextcar(c)
    while (p(nc) <= p(c))
        ca = c;
        c = nextcar(c)
    end
    nextcar(ca) = nc;
    nextcar(nc) = c;
end

        
        