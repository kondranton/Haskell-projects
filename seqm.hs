seqA n = 
        let 
                subfunc a1 a2 a3 i t 
                        | t==0 = 1
                        | t==1 = 2
                        | t==2 = 3
                        | i+3==t = a3 + a2 - 2 * a1
                        | t > 0 = subfunc a2 a3 (a3 + a2 - 2 * a1) (i+1) n
                        | otherwise = undefined
                in subfunc 1 2 3 0 n
