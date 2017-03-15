module FibFast where
fibonacciFast n | n < 0 = fib1 1 (-1) (-1) n
                | otherwise = fib 0 1 0 n
            
fib c1 c2 n total | n == total = c1 
                  | n + 1 == total = c2
                  | otherwise = fib c2 (c1+c2) (n+1) total
                  
fib1 c1 c2 n total | n == total = c1
                   | n - 1 == total = c2 
                   | otherwise = fib1 c2 (c1-c2) (n-1) total
