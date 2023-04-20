rotate' ::[a]->(Int)->[a]
rotate' (xs) y=rotate''(xs) (length(xs)-((y+length(xs))`mod` length(xs)))
    where 
        rotate'' ::[a]->(Int)->[a]
        rotate'' [] _=[]
        rotate'' (xs) y= if(y>0) then rotate''([last xs]++ init(xs)) (y-1) else xs
       