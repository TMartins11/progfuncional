{-De maneira similar à função length, mostre como a função replicate :: Int -> a -> [a], que
retorna uma lista de elementos idênticos, pode ser definida utilizando list comprehension.

{-exemplo-}

Main> replicate 3 True = [True, True, True]

-}

-- Padrão
replicateP :: Int -> a -> [a]
replicateP 0 _ = []
replicateP x y = y : replicateP (x-1) y

-- List Comprehension
replicateLC :: Int -> a -> [a]
replicateLC 0 _ = []
replicateLC x y = [y| _ <- [1..x]]