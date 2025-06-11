{-Defina o operador de exponenciação &! para inteiros não negativos, utilizando o mesmo padrão
de recursividade do operador de multiplicação. Mostre como 2 &! 3 é calculado utilizando a
função que você definiu-}

(&!) :: Int -> Int -> Int
_  &! 0 = 1
0  &! _ = 0
x  &! y = x * (x &! (y-1))  
