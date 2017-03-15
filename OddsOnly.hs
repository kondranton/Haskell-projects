module OddsOnly where

oddsOnly :: Integral a => [a] -> [a]
oddsOnly [] = []
oddsOnly (x:[]) = if even x then x:[] else []
oddsOnly (x:xs) = if even x then x:(oddsOnly xs) else oddsOnly xs