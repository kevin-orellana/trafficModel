function graph = Map(num_cars, num_blocks, num_intersections)
    
    i1 = zeros(num_blocks);
    i2 = zeros(num_blocks);
    
    % number of blocks entering intersection i
    nbin =  zeros(1:num_intersections);
    % number of blocks leaving intersection i
    nbout = zeros(1:num_intersections);
    
    % nbin, bin can be de derived from i2 
    % that nbout, bout can bederived from i1 
    for i=1:n_intersections
        nbin(i) = sum(i2==i);
        nbout(i) = sum(i1==i);
    end
    
    nbin_max = max(nbin);
    nbout_max = max(nbout);
    % number of blocks leaving intersection
    bin = zeros(number_intersections, nbinmax);
    % index of ith block leaving intersection j
    bout = zeros(number_intersections, nbout_max);
    
    for i = 1:num_intersections
        bin(i, 1:nbin(i)) = find(i2 == i);
        bout(i, 1:nbout(i)) = find(i1 == i);
    end
    
    if ((sum(nbin) == sum(nbout)) && (sum(nbout) == nb)):
        print('Graph Matches')
    
    
    