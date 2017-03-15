module QSort where
qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:[]) = [x]
qsort (x:xs) = qsort (filter (<x) xs) ++  (x : qsort (filter (>=x) xs))