function [] = setlights(num_intr, num_blocks, t)

    % initialize for setlights
    % notes: adjust tlcstep
    
    jgreen = ones(1, num_intr);
    num_intr = bin(num_blocks, length(jgreen)); 
    tlc_step = 1; %time interval between light changes
    tlc = tlc_step;
    
    createcars(num_blocks)
    
    while (t > tlc)
        for i = 1:num_blocks_intr
            jgreen(i) = jgreen(i) + 1;
            if (jgreen(i) > num_intr(i))
                jgreen(i) = 1;
            end
        end
        tlc = tlc + tlc_step;
    end
    
    s = zeros(1, num_blocks);
    
    for i = 1:num_intr
        b = bin(i, jgreen(i));
        s(b) = 1;
    end
    
    
end


