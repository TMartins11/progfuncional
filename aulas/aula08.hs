import Data.Char

-- uso do $$
--------------------------------
--zip [1,2,3] ["a","bb", "ccc"]
--unzip $$
--------------------------------
-- 3+5
-- 32 - $$

{- função que multiplica por x cada elemento de uma lista -}
f1 x l = [x*a| a <-l]

{- função que filtra os pares e os multiplica por x-}
f2 x l = map (*x) (filter(\a -> a `mod` 2 == 0) l)

{- função que multiplica por x apenas os números pares de uma lista -}
f3 x l = [x*a| a <-l, a `mod` 2 == 0]

{- função que filtra os pares maiores que 5 e os multiplica por x- -}
f4 x l = map (*x) (filter(\a -> a > 5 && a `mod` 2 == 0 ) l)

{- função que filtra os pares ou maiores que 5 e os multiplica por x- -}
f5 x l = [x*a| a <- l, a > 5 || a `mod` 2 == 0]

{- função que faz um produto cartesiano entre duas listas
   sendo uma dada como parâmetro e outra gerada dentro da função-}
prodCartesiano :: [Int] -> [(Int,Char)]
prodCartesiano a = [(x,y)| x <- a, y <- ['a','b','c']]