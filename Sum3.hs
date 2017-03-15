module Sum3 where

sum3 :: Num a => [a] -> [a] -> [a] -> [a]

sum3 [] [] [] = []
sum3 [] b c = sum3 [0] b c
sum3 a [] c = sum3 a [0] c
sum3 a b [] = sum3 a b [0]
sum3 (a:as) (b:bs) (c:cs) = (a + b + c) : sum3 as bs cs