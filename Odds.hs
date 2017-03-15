module Odds where

data Odd = Odd Integer deriving (Eq, Show)

-- data Odd = Odd Integer deriving (Eq,Show)
-- не убирайте комментарий с предыдущей строки
-- определение Odd уже присутствует в вызывающей программе
instance Enum Odd where
    toEnum x | x `mod` 2 == 0 = Odd $ toInteger x
             | otherwise = undefined
    fromEnum (Odd x) = fromIntegral x :: Int
    succ (Odd x) = Odd (x+2)
    pred (Odd x) = Odd (x-2)
    enumFrom x = x:(enumFrom $ succ x)
    
    enumFromThen x@(Odd xi) y@(Odd yi) = x:(enumFromThen y (Odd (yi+yi-xi)))
    
    enumFromTo x@(Odd xi) y@(Odd yi) | xi>=yi = []
                                     | otherwise = x:(enumFromTo (succ x) y)
                   
    enumFromThenTo x@(Odd xi) y@(Odd yi) z@(Odd zi) | xi>=yi && xi<zi = []
                                                    | xi<=yi && xi>zi = []
                                                    | otherwise = x:(enumFromThenTo y (Odd (yi+yi-xi)) z)


test0 = succ (Odd 1) == (Odd 3)
test1 = pred (Odd 3) == (Odd 1)
-- enumFrom
test2 = (take 3 $ [Odd 1 ..]) == [Odd 1,Odd 3,Odd 5]
-- enumFromTo
-- -- По возрастанию
test3 = (take 3 $ [Odd 1..Odd 7]) == [Odd 1,Odd 3,Odd 5]
-- -- По убыванию
test4 = (take 3 $ [Odd 7..Odd 1]) == []
-- enumFromThen
-- -- По возрастанию
test5 = (take 3 $ [Odd 1, Odd 3 ..]) == [Odd 1,Odd 3,Odd 5]
-- -- По убыванию
test6 = (take 3 $ [Odd 3, Odd 1 ..]) == [Odd 3,Odd 1,Odd (-1)]
-- enumFromThenTo
-- -- По возрастанию
test7 =([Odd 1, Odd 5 .. Odd 7]) == [Odd 1,Odd 5]
-- -- По убыванию
test8 =([Odd 7, Odd 5 .. Odd 1]) == [Odd 7,Odd 5,Odd 3,Odd 1]
-- -- x1 < x3 && x1 > x2
test9 =([Odd 7, Odd 5 .. Odd 11]) == []
-- -- x1 > x3 && x1 < x2
test10 =([Odd 3, Odd 5 .. Odd 1]) == []

allTests = zip [0..] [test0, test1, test2, test3, test4, test5, test6, test7, test8, test9, test10]