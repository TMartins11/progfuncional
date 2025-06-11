{-Questão 24 - Lista 1 (Nova proposta): Faça em Haskell uma solução para, dada uma lista de
inteiros, retornar a string contendo as letras do alfabeto cuja posição é dada pelos elementos
da lista. Utilize list comprehension e, caso necessário, funções de alta ordem.

{-exemplos-}

Main> converte [1,2,6,1,9] = "ABFAI"

Main> converte [ ] = ""

-}

import Data.Char (chr,ord)

converte :: [Int] -> String
converte xs = [chr (x + ord 'A' - 1)| x <- xs]

converteTotal :: [Int] -> String
converteTotal xs = map (\x -> chr(x + ord 'A' - 1) ) xs