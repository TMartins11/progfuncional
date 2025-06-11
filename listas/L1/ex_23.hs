{-Faça em Haskell uma solução para, dada uma lista de inteiros, retornar uma dupla de listas de
inteiros onde a primeira conterá os elementos ímpares e a segunda os elementos pares passados
como parâmetro.

{-exemplo-}

Main> separa [1,4,3,4,6,7,9,10] = ([1,3,7,9],[4,4,6,10])

-}

sepImpares :: [Int] -> [Int]
sepImpares xs = [x| x <- xs , x `mod` 2 /= 0]

sepPares :: [Int] -> [Int]
sepPares xs = [x| x <- xs, x `mod` 2 == 0]

separa :: [Int] -> ([Int],[Int])
separa xs = (sepImpares xs, sepPares xs)  

separaTudo :: [Int] -> ([Int],[Int])
separaTudo xs = ([x| x <- xs, x `mod` 2 /= 0 ] , [x| x <- xs , x `mod` 2 == 0])