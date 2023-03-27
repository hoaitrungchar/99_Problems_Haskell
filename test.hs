checksquare :: [x] -> Bool
checksquare []=True
checksquare [x]= True 
checksquare (x:_)= (((floor (sqrt x))*(floor (sqrt x)))==x)