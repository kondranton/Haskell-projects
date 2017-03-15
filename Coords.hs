module Coords where

data Coord a = Coord a a

get2 = 2::Double
sig x = signum $ fromIntegral x

getCenter :: Double -> Coord Int -> Coord Double
getCenter x (Coord x1 y1) = Coord 
                                   (fromIntegral x1 + (sig x1) * (x/get2)) 
                                   (fromIntegral y1 + (sig y1) * (x/get2))

getCell :: Double -> Coord Double -> Coord Int
getCell x (Coord x1 y1) = Coord (floor (x1/x)) (floor (y1/x))