module Main where

main' :: IO ()
main' = do 
        all <- getDirectoryContents "."
        let filtered = filter (isPrefixOf "haskell") all
        print filtered