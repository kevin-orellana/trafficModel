% createcars.m 
% note: insertnewcar?
for b = 1:nb
    if (rand < dt * R * L(b))
        nc = nc + 1;
        p(nc) = rand*L(b);
        x(nc) = xi(i1(b)) + p(nc) * ux(b);
        y(nc) = yi(i1(b)) + p(nc) * uy(b);
        onroad(nc) = 1;
        insertnewcar % note where is this from?
        choosedestination % note: where is this from?
        nextb(nc) = b;
        tenter(nc) = t;
        benter(nc) = b;
        penter(nc) = p(nc);
    end
end
