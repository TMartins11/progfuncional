{-Faça em Haskell uma solução para, dada uma lista de inteiros, retornar a string contendo as
letras do alfabeto cuja posição é dada pelos elementos da lista.

{-exemplo-}

Main> converte [1,2,6,1,9] = "ABFAI"
Main> converte [ ] = "".

-}

import Data.Char

converte :: [Int] -> String
converte [] = ""
converte (x:xs) = chr (x + ord 'A' - 1) : converte xs

reverte :: String -> [Int]
reverte "" = []
reverte (x:xs) =  (ord x - ord 'A' + 1) : reverte xs 