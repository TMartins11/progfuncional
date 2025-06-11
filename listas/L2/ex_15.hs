{-Questão 19 - Lista 1 (Nova proposta): Implemente a função duplicate::String ->Int->String
que recebe uma string s e um número inteiro n, utilizando list comprehension e funções de alta
ordem. A função deve retornar a concatenação de n cópias de s. Se n for zero, retorna . Como
dica, usar o operador de concatenação pré-definido (++)::String->String->String
-}

-- List Comprehension + Alta Ordem
duplicate :: String -> Int -> String
duplicate _ 0 = "."
duplicate s x = concat(map(\_ -> s) [1..x])

-- Versão Original
-- duplicate :: String -> Int -> String
-- duplicate _ 0 = "."
-- duplicate s n = s ++ duplicate s (n-1)

