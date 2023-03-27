myButLast :: [x] -> x
myButLast [x]= error "No But Last"
myButLast []= error "No But Last"
myButLast [x,_]= x
myButLast (x:xs)=myButLast xs
