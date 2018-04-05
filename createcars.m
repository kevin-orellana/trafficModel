function [] = createcars(num_blocks, p, R, L, x, y, xi, yi, on_road)
% R - probability a car will spawn - per unit length of road per unit time
% p - ooint where car spawns
% x, y - coordinate of car
% xi, yi - coordinate of intersection
% onroad - whether car is moving (1) or stationary(0)
    for b = 1:num_blocks
        if (rand < dt * R * L(b))
          new_car = new_car + 1;
          p(new_car) = rand*L(b);
          x(new_car) = xi(i1(b)) + p(new_car) * (%unit_vector) * x(b);
          y(new_car) = yi(i1(b)) + p(new_car) * uy(b);
          on_road(new_car) = 1;
          insertnewcar() % note where is this from?
          choosedestination() % note: where is this from?
          next_b(new_car) = b;
          t_enter(new_car) = t;
          b_enter(new_car) = b;
          p_enter(new_car) = p(new_car);
        end
    end
end

% Sanity check R*Lmax * dt < 0.1