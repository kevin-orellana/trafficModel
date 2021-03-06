function [] = choosedestination(new_car)
% use method of rejection to choose a block with probability proportional
% to its length and with p uniformly distributed in that block
% p - 
% x_dest - x coordinate destination 
% y_dest - y coordinate destination

    global block_dest point_dest num_blocks xi yi i1 x_dest y_dest L Lmax
    
    
    
    block_dest(new_car) = 1 + floor(rand * num_block);
    point_dest(new_car) = rand * Lmax;
 
    while (point_dest(new_car) >= L(block_dest(new_car)))
        block_dest(new_car) = 1 + floor(rand * num_blocks);
        point_dest(new_car) = rand * Lmax;
    end
    
    x_dest(new_car) = xi(i1(block_dest(new_car))) + point_dest(new_car) * unit_x(block_dest(new_car));
    y_dest(new_car) = yi(i1(block_dest(new_car))) + point_dest(new_car) * unit_y(block_dest(new_car));
    % Lmax = max(L)
    
    
end
