{- Utilizando list comprehension, defina a função insertOrd :: Int -> [Int] -> [Int] que, dada uma
lista de inteiros ordenada, insere na lista o parâmetro passado mantendo a lista ordenada-}

insertOrd :: Int -> [Int] -> [Int]
insertOrd x xs = [y| y <- xs, y < x] ++ [x] ++ [y| y <- xs, y >= x]


-- Gera todos os elementos menores que x, concatena x e depois concatena todos os elementos maiores que x. 