{-Escreva, em Haskell, uma função que retorna o dígito de um número inteiro de acordo com a
posição informada:
    anyDigit 0 7689 = 7
    anyDigit 2 7689 = 8
    anyDigit 9 7689 = -1
-}

numDigits :: Int -> Int
numDigits x
    | x < 10 = 1
    |otherwise = 1 + numDigits (div x 10)

anyDigit :: Int -> Int -> Int 
anyDigit pos num
    | pos >= numDigits num = -1
    | otherwise = mod (div num (10 ^ (numDigits num - pos - 1))) 10 