{- Implemente a função pushRight::String->Int->String que recebe uma string s e um número
inteiro n e retorna uma nova string t com k caracteres ’>’ inseridos no início de s. O valor de
k deve ser tal que o comprimento de t seja igual a n. Obs: se n é menor que o comprimento
de s, a função retorna a própria string s.

{-exemplo-}

Main> pushRight "abc" 5 = ">>abc"

-}

pushRight :: String -> Int -> String 
pushRight s n
    | stringLenght s >= n = s
    | otherwise = '>' : pushRight s (n-1)


stringLenght :: String -> Int
stringLenght [] = 0
stringLenght (x:xs) = 1  + stringLenght xs