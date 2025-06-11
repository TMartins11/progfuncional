{-Questão 20 - Lista 1 (Nova proposta): Implemente a função pushRight::String->Int->String,
que recebe uma string s e um número inteiro n e retorna uma nova string t com k caracteres
’>’ inseridos no início de s, utilizando list comprehension e funções de alta ordem. O valor de
k deve ser tal que o comprimento de t seja igual a n. Obs: se n é menor que o comprimento
de s, a função retorna a própria string s.

{-exemplo-}

Main> pushRight "abc" 5 = ">>abc"

-}

-- Versão de Alta Ordem
pushRight :: String -> Int -> String
pushRight s i 
    | length s >= i = s
    | otherwise = ['<'| _ <- [1..(i-length s)]] ++ s


-- Versão original
-- pushRight :: String -> Int -> String
-- pushRight [] _ = []
-- pushRight s x
--     | length s >= x = s
--     | length s < x = '<' : pushRight s (x-1)  