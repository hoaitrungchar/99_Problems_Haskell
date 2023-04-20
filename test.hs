encode :: (Eq a) => [a] -> [(a, Int)]
encode x = zip (compress x) (lengthar (pack x))
  where
    lengthar :: [[a]] -> [Int]
    lengthar [] = []
    lengthar (x:xs) = [length x] ++ lengthar xs

    pack :: (Eq a) => [a] -> [[a]]
    pack = foldr func []
      where
        func x [] = [[x]]
        func x (y:ys) = if x == head y then (x : y) : ys else [x] : y : ys

    compress :: (Eq a) => [a] -> [a]
    compress [] = []
    compress [x] = [x]
    compress (x:ys@(y:_))
      | x == y = compress ys
      | otherwise = x : compress ys
