{-Um inteiro positivo é perfeito se é igual à soma dos seus fatores, excluindo ele próprio. Utili-
zando list comprehension, defina a função perfects :: Int -> [Int] que retorna a lista de todos
os números perfeitos até o limite fornecido.

{-exemplo-}

Main> perfects 500 = [6, 28, 496]

-}

perfects :: Int -> [Int]
perfects x = [y| y <- [1..x], soma(divisores y) == y]

divisores :: Int -> [Int]
divisores x = [y| y <- [1..x `div` 2], x `mod` y == 0]

soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + soma xs 