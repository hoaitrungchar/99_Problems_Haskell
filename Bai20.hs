remove_at' :: [x]->(Int)->[x]
remove_at' (x:xs) y
    |(y==1) =xs
    |otherwise =x:(remove_at'(xs)(y-1))