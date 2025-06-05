{-Escreva, em Haskell, uma função que retorna quantos múltiplos de um determinado inteiro tem
em um intervalo fornecido. Por exemplo, o número 4 tem 2 múltiplos no intervalo de 1 a 10.
howManyMultiples 4 1 10 = 2
-}

howManyMultiples :: Int -> Int -> Int -> Int
howManyMultiples x y z
    | y > z = 0
    | mod y x == 0 = 1 + howManyMultiples x (y+1) z
    | otherwise = howManyMultiples x (y+1) z  
