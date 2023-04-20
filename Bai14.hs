dupli :: [a]->[a]
dupli [x]= [x]++[x]
dupli []=[]
dupli (x:xs)=[x]++[x]++dupli xs