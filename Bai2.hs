myButLast :: [x] -> x
myButLast = head . reverse . init