elementAt :: [x] -> Int -> x
elementAt (x:xs) 1= x 
elementAt [] k = error "Index out of bound"
elementAt (_:xs) k
  | k < 1           = error "Index out of bounds"
  | otherwise       = elementAt' xs (k - 1)