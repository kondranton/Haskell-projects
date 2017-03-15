module Logger where

data Log a = Log [String] a

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger f msg = \a->Log (msg:[]) (f a)

arr (Log a _) = a
val (Log _ v) = v

arrSum a b = (arr a) ++ (arr b)

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers x f g = Log (arrSum (f x) (g (val (f x))))  (val (g (val (f x))))