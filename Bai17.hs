split' :: (Eq a)=>[a]->(Int)->[[a]]
split' []_=[]
split' [x]_=[[x]]
split' (x:xs) y
    |(y==1) = [x]:(split' xs (y-1))
    |otherwise = (x:(head(array))):tail(array)
        where 
            array=split' xs (y-1)