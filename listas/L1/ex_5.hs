{-Escreva, em Haskell, a definição de uma função fourPower que retorne o seu argumento elevado
à quarta potência. Use a função square dada em sala de aula na definição de fourPower. -}

square :: Int -> Int
square x = x * x

fourPower :: Int -> Int
fourPower x = square (square x)