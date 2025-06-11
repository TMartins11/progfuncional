{- Utilizando list comprehension, gere uma expressão que calcule 1² + 2² + ...100²-}

twoPower :: Int
twoPower = sum[x^2| x <- [1..100]]