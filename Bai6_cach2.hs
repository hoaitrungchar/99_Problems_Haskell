isPalindrome :: (Eq a)=>[a] -> Bool
isPalindrome []= True
isPalindrome [_]=True
isPalindrome (x:xs) =  (x == (head (reverse xs))) &&isPalindrome (init xs) 