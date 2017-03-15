import Data.Char
sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = (toInteger $ sum $ map shit $ show x, toInteger $ length $ removeNonNumbers $ show x) where
    shit k = if isDigit k then digitToInt k else 0::Int
    removeNonNumbers = filter isDigit