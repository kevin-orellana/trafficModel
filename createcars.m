function [] = createcars(num_car, num_blocks, p, R, L, xi, yi,)
% note: insertnewcar?
% R - probability a car will spawn
% p - ooint where car spawns
% x, y - coordinate of car
% xi, yi - coordinate of intersection
% onroad - whether car is moving (1) or stationary(0)
    for b = 1:num_blocks
        if (rand < dt * R * L(b))
          new_car = new_car + 1;
          p(new_car) = rand*L(b);
          x(new_car) = xi(i1(b)) + p(new_car) * (%unit_vector) * x(b);
          y(new_car) = yi(i1(b)) + p(nc) * uy(b);
          onroad(new_car) = 1;
          insertnewcar() % note where is this from?
          choosedestination() % note: where is this from?
          next_b(new_car) = b;
          t_enter(new_car) = t;
          b_enter(new_car) = b;
          p_enter(new_car) = p(new_car);
        end
    end
end
