{-Questão 26 - Lista 1 (Nova proposta): Faça em Haskell uma solução para o seguinte problema
utilizando list comprehension e/ou funções de alta ordem: Dada uma lista de caracteres [Char],
e um caractere a, retornar quantos caracteres da lista são iguais a a.

{-exemplo-}

Main> conta "ABCAABCDDA" "B" = 2

-}

conta :: [Char] -> Char -> Int
conta xs c = length[x| x <- xs, x == c]

contaAO :: [Char] -> Char -> Int
contaAO xs c = length(filter(\x -> x == c) xs)

{-Questão 28 - Lista 1 (Nova proposta): Faça uma solução em Haskell utilizando list com-
prehension que, dada uma lista de inteiros, ela retorne uma lista com uma repetição de
cada elemento de acordo com seu valor.

{-exemplo-}

Main> proliferaInt [3,0,2,4,0,1] = [3,3,3,2,2,4,4,4,4,1]

-}

proliferaInt :: [Int] -> [Int]
proliferaInt xs = concat[replicateF x x| x <- xs] 

replicateF :: Int -> Int -> [Int] 
replicateF x 0 = []
replicateF x y = x : replicateF x (y-1)
