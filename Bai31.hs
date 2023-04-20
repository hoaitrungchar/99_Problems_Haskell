isprime:: (Int)->Bool
isprime 0=False
isprime 1=False
isprime x=isprime' x (x-1)
    where
        isprime':: (Int)->(Int)->Bool
        isprime' x y
            |(y==1) = True
            |otherwise =((x `mod` y)/=0)&& isprime' x (y-1)