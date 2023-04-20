slice' ::[a]->(Int)->(Int)->[a]
slice' []_ _=[]
slice' (x:xs) y z
    |(y<2&&z>=1) =[x]++(slice' xs (y-1) (z-1))
    |otherwise =slice' xs (y-1) (z-1)