% movemcars.m
for b = 1:nb
    c = firstcar(b);
    while (c > 0)
        if (c == firstcar(b))
            if (bd(c) == b) && (pd(c) > p(c))
                d = dmax;
            elseif (s(b) == 0)
                d = L(b) - p(c)
            else
                decidenextblock
                if (lastcar(nextb(c)) > 0)
                    d = (L(b) - p(c)) + p(lastcar(nextb(c));
                else
                    d = dmax;
                end
            end
        else
            d = p(ca) - p(c);
        end
        pz = p(c);
        nextc = nextcar(c);
        p(c) = p(c) + dt * v(d);
        if (b == bd(c)) && (pz < pd(c)) && (pd(c) <= p(c))
            removecar
        elseif (L(b) <= p(c))
            p(c) = p(c) - L(b);
            if (nextb(c) == bd(c)) && (pd(c) <= p(c))
                removecar
            else
                cartonextblock
            end
        else
            x(c) = xi(i1(b)) + p(c) * ux(b);
            y(c) = yi(i1(b)) + p(c) * uy(b);
            ca = c;
        end
        c = nextc; % saved value of nextcar(c)
    end
end

   
    
            