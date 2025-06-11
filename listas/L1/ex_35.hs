{-Construa uma função que, dado três valores, verifique se os mesmos podem ser os lados de
um triângulo. Se for possível formar o triângulo, retorne uma tupla-2 com o tipo do triângulo
formado (com relação às arestas) e o perímetro do mesmo.

{-exemplo-}

Main> triangulo (7,7,11) = ("Isóceles", 25)

-}

triangulo :: (Int,Int,Int) -> (String,Int)
triangulo (a,b,c)
    | not (a + b > c && a+c > b && b + c > a) = ("impossivel",-1)
    | a == b && b == c = ("Equilatero", a+b+c)
    | a == b || a == c  || b == c  = ("Isosceles", a+b+c)
    | otherwise = ("Escaleno", a+b+c)
