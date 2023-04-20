encode:: (Eq a)=>[a]->[(Int,a)]
encode x =zip (lengthar (pack x)) (compress x) 
    where 
        lengthar:: [[x]]->[Int]
        lengthar []=[0]
        lengthar (x:xs) =[length x]++lengthar xs

        pack :: (Eq a) => [a] -> [[a]]
        pack = foldr func []
            where 
                func x []     = [[x]]
                func x (y:xs) = if x == (head y) then ((x:y):xs) else ([x]:y:xs)
                
        compress :: (Eq a)=>[a]->[a]
        compress [] =[]
        compress [x]=[x]
        compress (x:ys@(y:_))
            |(x==y) = compress ys
            |otherwise  = [x] ++ compress ys
    