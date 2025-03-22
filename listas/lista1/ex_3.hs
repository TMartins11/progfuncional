soma :: Int -> Int -> Int
soma x y = x + y

multiplica :: Int -> Int -> Int
multiplica x 0 = 0
multiplica x 1 = x
multiplica x y
    | y < 1 = multiplica (soma x x) (y-1)