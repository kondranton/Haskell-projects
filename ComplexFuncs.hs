module ComplexFuncs where

class Printable a where
    toString::a->[Char]
    toString x = "unit type"

instance Printable Bool where
    toString True = "true"
    toString False = "false"
    
instance Printable () where
        
instance (Printable a, Printable b) => Printable (a, b) where
    toString (a, b) = "(" ++ (toString a) ++ "," ++ (toString bt) ++ ")"