module GroupElems where

groupElems :: Eq a => [a] -> [[a]]
groupElems [] = [[]]
groupElems [x] = [[x]]
groupElems (x:xs) = ([x] ++ (fst $ span (==x) xs)) : groupElems (snd $ span (==x) xs)