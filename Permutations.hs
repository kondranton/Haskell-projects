module Premutations where

perms :: [a] -> [[a]]
perms [] = [[]]
perms [x] = [[x]]
perms x = subperms x where
        subperms [a] = [a]
        subperms (a:as) = map (\xs -> a:xs) (concatMap rev (subperms as))
        rev m = [m, (reverse m)]