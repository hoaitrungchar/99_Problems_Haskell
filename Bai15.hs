repli :: [a]->(Int)->[a]
repli [] _=[]
repli _ 0=[]
repli [x] a
    |(a>0) =[x]++(repli [x] (a-1))
    |otherwise =[]
repli (x:xs) a = (repli [x] a) ++ (repli xs a)
