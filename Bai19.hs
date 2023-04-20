rotate' ::[a]->(Int)->[a]
rotate' x y =if(y<0) then (slice' x (y+length (x)+1) (length x))++(slice' x 1 (y+length (x))) else (slice' x (y+1) (length x))++(slice' x 1 y)
         where
            slice' ::[a]->(Int)->(Int)->[a]
            slice' []_ _=[]
            slice' (x:xs) y z
                |(y<2&&z>=1) =[x]++(slice' xs (y-1) (z-1))
                |otherwise =slice' xs (y-1) (z-1)
       