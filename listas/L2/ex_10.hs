{-Defina a função dec2int :: [Int] -> Int que converta uma lista de inteiros para um inteiro.

{-exemplo-}

Main> dec2int :: [2,3,4,5] = 2345

-}

-- Original:
-- dec2int :: [Int] -> Int
-- dec2int [] = 0
-- dec2int (x:xs) = x * 10 ^(length xs) + dec2int xs

-- List Comprehension:
dec2int :: [Int] -> Int
dec2int xs = sum [x * 10 ^ y | (x,y) <- zip xs [length xs-1, length xs-2..0]]
