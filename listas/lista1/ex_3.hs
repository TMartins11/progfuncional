soma :: Int -> Int -> Int
soma x y = x + y

multiplica :: Int -> Int -> Int
multiplica x 0 = 0
multiplica x y = soma x (multiplica x (y-1))

main = do
  print(multiplica 3 5) {-Caso Teste, deve resultar em 15-}
