function [] = removecar(onroad, t_exit,  firstcar, lastcar)
% on road - active
% t_exit - time of exit of car
    onroad(car) = 0;
    t_exit(car) = t;
    if (car == firstcar(b))
        firstcar(b) = nextcar(c);
        if (c == lastcar(b))
            lastcar(b) = 0;
        end
    else
        nextcar(ca) = nextcar(c);
        if (c == lastcar(b))
            lastcar(b) = ca;
        end
    end
    % not needed but..
    x(c) = xd(c);
    y(c) = yd(c);
    nextcar(c) = 0;
    % recall that we previously set nextc = nextcar(c)
    r