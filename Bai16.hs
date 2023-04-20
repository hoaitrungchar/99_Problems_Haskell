drop' :: (Eq a)=>[a]->(Int)->[a]
drop' []_=[]
drop' (x:xs) y
    |(y==1) =  xs
    |otherwise = x:(drop' xs (y-1))