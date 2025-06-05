{-Considere a função em Haskell soma::Int->Int->Int que retorna a soma entre os dois parâ-
metros. Assim, faça uma função em Haskell que resulte a multiplicação de dois parâmetros
fazendo uso da função soma. -}

soma :: Int -> Int -> Int
soma x y = x + y

multiplica :: Int -> Int -> Int
multiplica _ 0 = 0
multiplica x y 
    | y > 0 = soma x (multiplica x (y-1))
    | otherwise = - (multiplica x (-y))