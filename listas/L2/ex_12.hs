{-Defina a função evenCubes :: Int -> [Int] que, dado um limite, retorne a lista do cubo dos números
pares até o limite fornecido.-}

evenCubes :: Int -> [Int]
evenCubes x = [y^3| y <- [1..x-1], y `mod` 2 == 0]