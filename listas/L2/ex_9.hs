{- Mostre como a seguinte list comprehension [f x | x <- xs, p x] pode ser reescrita utilizando
funções de alta-ordem como map e filter. Tente entender e aplicar o seguinte exemplo:

Main> [(+7) x | x <- [1..10], odd x]

-}

-- [f x | x <- xs, p x] : Aplica f a todos os elementos de xs que satisfazem p.
-- Logo: [(+7) x | x <- [1..10], odd x] : Soma 7 a todo x que é ímpar (odd).

-- map = Aplica uma determinada condição a todos os elementos de uma lista ou tupla.
-- filter = Filtra elementos em uma lista / tupla conforme uma condição definida

f1 :: [Int]
f1 = map (+7) (filter odd [1..10]) 

{- Exemplos de List Comprehension com dois geradores e com um gerador aninhado.

    combina :: [Int] -> [Int] -> [(Int,Int)]
    combina [] _ = []
    combina _ [] = []
    combina a b = [(x,y)| x <- a, y <- b]

    combinaM :: [Int] -> [Int] -> [(Int,Int)]
    combinaM a b = concat[[(x,y)| y <- b]| x <- a]
-}