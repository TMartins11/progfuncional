{-A função de alta-ordem unfold que retorna uma lista pode ser definida como:

unfold p h t x
    | p x = []
    | otherwise = h x : unfold p h t (t x)

Com a chamada da função unfold, crie uma lista das potências de 2 com limite = 2¹⁰ -}

unfold :: (a -> Bool) -> (a -> b) -> (a -> a) -> a -> [b]
unfold p h t x
    | p x = []
    | otherwise = h x : unfold p h t (t x)

powersOf2 = unfold (>2^10) id (*2) 1
