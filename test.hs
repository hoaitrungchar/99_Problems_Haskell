compress :: (Eq a)=>[a]->[a]
compress [] =[]
compress [x]=[]
compress (x:ys@(y:_)) =[x] ++ [y] ++ compress ys