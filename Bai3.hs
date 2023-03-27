elementAt :: [x] -> Int -> x
elementAt (x:xs) 1= x 
elementAt [] k = error "Index out of bound"
elementAt (x:xs) k =elementAt xs (k-1)