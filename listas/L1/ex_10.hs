{-Escreva, em Haskell, uma função que retorna o último dígito de um número inteiro.-}

lastDigit :: Int -> Int
lastDigit x
    | x >= 0 =  x `mod` 10
    | otherwise = (-x) `mod`  10