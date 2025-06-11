{-Uma tupla (x, y, z) de número inteiros é pitagórica se x² + y² = z². Utilizando list comprehen-
sion, defina a função pyths :: Int -> [(Int, Int, Int)] que, dado um limite, retorne todas as
tuplas de (x, y, z) que são pitagóricas até o limite fornecido.

{-exemplo-}

Main> pyths 10 = [(3,4,5), (4,3,5),(6,8,10),(8,6,10)

-}

pyths :: Int -> [(Int,Int,Int)]
pyths a = [(x,y,z)| x <- [1..a], y <- [1..a], z <- [1..a], z^2 == x^2 + y^2 ]