{- 
Código Original 

fat::Int->Int
fat x = x * fat(x-1)

(Falta o caso de parada, fat 0 = 1, o que ocasiona um erro nas chamadas subsequentes).
-}

--Com a correção, a função deve funcionar normalmente.
fat::Int->Int
fat 0 = 1
fat x = x * fat(x-1)