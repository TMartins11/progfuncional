{-Construa uma função em Haskell que recebe 4 inteiros e devolve uma tupla-4 com os quatros
valores originais, só que ordenados.

{-exemplo-}

Main> ordena 3 5 1 (-3) = (-3, 1, 3, 5)

-}

ordena :: Int -> Int -> Int -> Int -> [Int]
ordena a b c d = bubbleSort [a,b,c,d]

ordAux :: [Int] -> [Int]
ordAux [] = []
ordAux [x] = [x]
ordAux (x:y:xs)
    | x > y = y : ordAux(x:xs)
    | otherwise = x : ordAux(y:xs)

bubbleSort :: [Int] -> [Int]
bubbleSort l
    | l == ordAux l = l
    | otherwise = bubbleSort (ordAux l)