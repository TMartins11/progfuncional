{-
Um programador especificou a função allDifferent para identificar se três números inteiros são
todos diferentes entre si, da seguinte forma:
    
    allDifferent::Int->Int->Int->Bool
    allDifferent m n p = (m/=n) && (n/=p)

(a) O que está errado nessa definição?
(b) Especifique corretamente uma função allDifferent para o propósito necessário
-}


{-R: a) A função não checa se m e p são diferentes entre si, só compara m com n e n com p, abordagem que seria correta somente
se m == p.

    b) A função foi corretamente implementada a seguir:
-}

allDifferent :: Int -> Int -> Int -> Bool
allDifferent m n p = (m /= n) && (n /= p) && (m /= p) 