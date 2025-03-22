answer :: Int
answer = 42

square :: Int -> Int
square x = x * x

allEqual :: Int -> Int -> Int -> Bool
allEqual x y z = (x == y) && (y == z)

maxi :: Int -> Int -> Int
maxi x y
    |x >= y = x
    |otherwise = y

f :: Int -> Int
f 1 = 9
f 2 = 7
f 3 = 15
f 4 = 14
f 5 = 8
f 6 = 27
f 7 = 3
f x = -1

maiorVenda :: Int -> Int -> Int
maiorVenda 0 v = v
maiorVenda d v
    | f d > v = maiorVenda(d-1) (f d)
    |otherwise = maiorVenda(d-1) v

maiorV7 :: Int
maiorV7 = maiorVenda 7 0