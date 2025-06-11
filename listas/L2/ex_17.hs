{-Questão 22 - Lista 1 (Nova proposta): Faça em Haskell uma solução para inverter os elementos
de uma lista de Inteiros utilizando list comprehension e funções de alta ordem.

{-exemplo-}

Main> inverte [1,2,3,4,5,6,150] = [150,6,5,4,3,2,1]

-}

inverte :: [a] -> [a]
inverte xs = [xs !! x | x <- [length xs-1, length xs - 2 .. 0]]


-- Versão Original
-- inverte :: [Int] -> [Int]
-- inverte [] = []
-- inverte (x:xs) = inverte xs ++ [x]