insertat :: (Eq a)=>a->[a]->Int->[a]
insertat a (x:xs) b
    |(b==1) = a:x:xs
    |otherwise =[x]++insertat a xs (b-1)