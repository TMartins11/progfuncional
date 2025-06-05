{-Escreva, em Haskell, a função invertInt::Int->Int que inverta os dígitos de um número inteiro.-}

inverteInt :: Int -> Int
inverteInt x = inverte x 0

inverte :: Int -> Int -> Int
inverte x y
    | x == 0 = y
    | otherwise = inverte(div x 10)(y * 10 + mod x 10)  