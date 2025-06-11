{-Defina a função find utilizada na função positions.

positions :: Eq a => a -> [a] -> [Int]
positions x xs = find x (zip xs [0..n])
        where n = (length xs) - 1
-}

find :: Eq a => a -> [(a,Int)] -> [Int]
find x xs = [i| (y,i) <- xs, x ==   y]
