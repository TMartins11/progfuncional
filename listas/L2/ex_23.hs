{-Dada as seguintes funções checkEqual e allEqual, que servem para verificar se todos os elementos
de uma lista são iguais, responda ao que se pede:

checkEqual :: Eq a => a -> [a] -> Bool
checkEqual _ [] = True
checkEqual y (z:zs) = (y == z) && checkEqual y zs

allEqual :: Eq a => [a] -> Bool
allEqual [] = True
allEqual (x:xs) = checkEqual x xs

(a) Explique o porquê de ambas as funções precisarem da classe Eq
(b) O que aconteceria se a restrição Eq fosse removida das assinaturas das funções?

-}

--