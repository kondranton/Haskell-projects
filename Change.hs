module Change where 

-- change :: (Ord a, Num a) => a -> [[a]]

change x coins = [coiner y | y <- coins] where coiner y =   

-- test = (change 7 [1,2,3]) == [[2,2,3],[2,3,2],[3,2,2],[7]]