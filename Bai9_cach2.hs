pack :: (Eq a) => [a] -> [[a]]
pack = foldr func []
    where func x []     = [[x]]
          func x (y:xs) =
              if x == (head y) then ((x:y):xs) else ([x]:y:xs)