module Tokenizer where
import Data.Char

data Token = Number Int | Plus | Minus | LeftBrace | RightBrace 
    deriving (Eq, Show)
    
asToken :: String -> Maybe Token
asToken x | x == "+" = Just Plus
          | x == "-" = Just Minus
          | x == "(" = Just LeftBrace
          | x == ")" = Just RightBrace
          | foldl (&&) True (map isDigit x) = Just $ Number (read x :: Int)
          | otherwise = Nothing

tokenize :: String -> Maybe [Token]
tokenize input = foldl tok [] (words input) where
    tok x xs = case asToken x of
                Just m -> m : xs
                Nothing -> Nothing