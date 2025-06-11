{-Para uma lista de elementos inteiros ordenada qualquer, faça uma função que retorne uma lista
de inteiros ordenada sem elementos repetidos.

{-exemplo-}

Main> purifica [1,1,4,5,5,5,6,7,8,8] = [1,4,5,6,7,8]

-}

purifica :: [Int] -> [Int]
purifica [] = []
purifica (x:xs)
    | numQtd x xs > 0 = purifica xs
    | otherwise = x : purifica xs

numQtd :: Int -> [Int] -> Int
numQtd _ [] = 0
numQtd  x (y:ys) 
    | x == y = 1 + numQtd x ys 
    | otherwise = numQtd x ys 

