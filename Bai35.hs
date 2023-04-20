primefactor ::(Int)->[Int]
primefactor 1 =[]
primefactor x= primefactor' x 2
    where
        primefactor' ::(Int)->(Int)->[Int]
        primefactor'  x y
            |(x `mod` y)==0 && (isprime y) =y:(primefactor' (x`div` y) (y))
            |otherwise = if(y<x) then primefactor' x (y+1) else []
        
        isprime:: (Int)->Bool
        isprime 0=False
        isprime 1=False
        isprime x=isprime' x (x-1)
            where
                isprime':: (Int)->(Int)->Bool
                isprime' x y
                    |(y==1) = True
                    |otherwise =((x `mod` y)/=0)&& isprime' x (y-1)