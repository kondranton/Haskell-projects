module FibStream where 

fibStream :: [Integer]
fibs x1 x2 = (x1 + x2) : fibs x2 (x1+x2)
fibStream = 0 : 1 :fibs 0 1