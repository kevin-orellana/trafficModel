function  [firstcar, lastcar] = insertnewcar(firstcar, lastcar, num_car, p, b)

    car = firstcar(b);
    % p: distance from start intersection to car
    if (car == 0 || p(num_car) > p(car)):
        nextcar(num_car) = c;
        firstcar(b) = num_cars;
        if (car == 0):
            lastcar(b) = num_cars;
        end
        
    else if p(num_car) <= p(lastcar(b)):
        nextcar(lastcar(b)) = num_car;
        lastcar(b) = num_car;
    
    else: 
        ca = car;
        car = nextcar(car);
        
        while (p(nc) <= p(c))
            ca = c;
            c = nextcar(c);
            
        end
        
        nextcar(ca) = nc;
        nextcar(nc) = c;
        
     end
     
 end
        
        