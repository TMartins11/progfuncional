{-Mostre como a seguinte list comprehension [(x,y) | x <- [1,2,3], y <- [4,5,6]], com dois geradores,
pode ser reescrita utilizando duas list comprehensions contendo um único gerador. Dica: utilize
a função de concatenação e concatene uma à outra.

Main> [[(x,y)| y <- [4,5,6]] | x <- [1,2,3]] = [[(1,4),(1,5),(1,6)],[(2,4),(2,5),(2,6)],[(3,4),(3,5),(3,6)]

-}
f0 :: [(Int,Int)]
f0 = [(x,y)| x <- [1,2,3], y <- [4,5,6]]

f1 :: [(Int,Int)]
f1 = concat [[(x,y)| y <- [4,5,6]] | x <- [1,2,3]]