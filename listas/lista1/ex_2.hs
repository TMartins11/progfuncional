{-
Código Original:

fat::Int->Int
fat x = x * fat(x-1)

O erro está em não ter o caso base: fat 0 = 1, o que resulta em um loop infinito.

Com a adição do caso base, a função funciona normalmente.
-}

fat :: Int -> Int
fat 0 = 1
fat x = x * fat(x-1)