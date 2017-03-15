module FibSlow where
fibonacci n | n == -1 = 1
            | n == -2 = -1
            | n == 0 = 0
            | n == 1 = 1
            | n < 0 = fibonacci (n + 2) - fibonacci (n + 1)
            | otherwise = fibonacci (n - 1) + fibonacci (n - 2)
