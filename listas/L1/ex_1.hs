f1 :: Double -> Double  
f1 x
    | x >= 0 = (x+4) / (x+2)
    | otherwise =  2 / x

f2 :: Double -> Double -> Double
f2 x y
    | x >= y = x + y
    | otherwise = x - y

f3 :: Double -> Double -> Double -> Double
f3 x y z
    | (x+y) > z = x + y + z
    | (x+y) < z = x - y - z
    | otherwise = 0
