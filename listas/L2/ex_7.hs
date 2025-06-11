{-Mostre como a função scalarproduct :: [Int] -> [Int] -> Int, que retorna o produto escalar
de duas listas, pode ser definida utilizando list comprehension.

{-exemplo-}:

Main> scalarproduct [1,2,3] [4,5,6] = 32

-}


scalarProduct :: [Int] -> [Int] -> Int
scalarProduct a b = sum[ x * y | (x,y) <- zip a b]

-- Versão sem list comprehension
prodEscalar :: [Int] -> [Int] -> Int
prodEscalar [] [] = 0
prodEscalar (x:xs) (y:ys) = (x * y) + prodEscalar xs ys 

-- zip é uma função que combina duas listas em uma sequência de pares, elemento a elemento. A seguir, um exemplo da implementação.
exZip :: [a] -> [b] -> [(a,b)]
exZip [] _ = []
exZip _ [] = []
exZip (a:xs) (b:ys) = (a,b) : exZip xs ys 