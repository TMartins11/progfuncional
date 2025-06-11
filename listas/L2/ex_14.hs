{-Questão 9 - Lista 1 (Nova proposta): Escreva, em Haskell, uma função que retorna quantos
múltiplos de um determinado inteiro tem em um intervalo fornecido utilizando list comprehen-
sion e funções de alta ordem. Por exemplo, o número 4 tem 2 múltiplos no intervalo de 1 a
10.

howManyMultiples 4 1 10 = 2

-}

-- Resposta
howManyMultiples :: Int -> Int -> Int -> Int
howManyMultiples a b c = length[x| x <- [b..c], x `mod` a == 0]


-- Versão mais Alta Ordem.
howManyMultiples2 :: Int -> Int -> Int -> Int
howManyMultiples2 a b c = length (filter(\x -> x `mod` a == 0) [b..c])

-- Definição Normal:

{-
howManyMultiples :: Int -> Int -> Int -> Int
howManyMultiples x y z
    | y <= z && y `mod` x == 0 = 1 + howManyMultiples x (y+1) z
    | y > z = 0
    | otherwise = howManyMultiples x (y+1) z

-}