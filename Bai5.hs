myReverse :: [x] -> [x]
myReverse [x]=[x]
myReverse []=[]
myReverse (x:xs)=(myReverse xs) ++ [x] 