{-Questão 29 - Lista 1 (Nova proposta): Faça uma solução em Haskell que, dada uma lista de
caracteres maiúsculos, ela retorne uma lista com uma repetição de cada elemento de acordo
com o valor de sua ordem no alfabeto. Faça a solução utilizando list comprehension.

{-exemplo-}

Main> proliferaChar [C,B,D] = "CCCBBDDDD"

-}

import Data.Char

proliferaChar :: [Char] -> String
proliferaChar xs = concat[replicate (ord x - 64) x| x <- xs]
