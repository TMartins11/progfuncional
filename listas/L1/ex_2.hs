{- Função Original: 
fat::Int->Int 
fat x = x * fat(x-1)
-}

fat:: Int -> Int
fat 0 = 1
fat x = x * fat(x-1)

{- Agora a função está correta, estava faltando apenas o caso base, fazendo com que a recursão da função nunca acabasse.
Agora, com a inclusão dele, funciona normalmente-}