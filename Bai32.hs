mygcd :: Int->Int->Int
mygcd 0 x= x
mygcd x 0= x
mygcd 1 x=1
mygcd x 1=1
mygcd a b
    |(a>b) = mygcd (a-b) a
    |otherwise =mygcd a (b-a)