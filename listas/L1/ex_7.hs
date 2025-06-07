{-Escreva, em Haskell, uma função que informa de quantas maneiras é possível escolher n objetos
em uma coleção original de m objetos, para m ≥ n.-}

fat :: Int -> Int
fat 0 = 1
fat x = x * fat(x-1)

combina :: Int -> Int -> Int
combina m n 
    | m >= n = div (fat m) (fat n * fat(m-n))
    | otherwise = -1