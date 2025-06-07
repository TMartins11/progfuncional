{- objetivo: trabalhar tipos distintos entre listas e tuplas -}

import Data.Char

-- fst e snd já são implementadas por padrão, fiz a implementação somente para ilustrar didáticamente os seus propósitos. 
-- (a,b) assumem tipos genéricos.

-- fst :: (a,b) -> a 
-- fst (x,_) = x 

-- snd :: (a,b) -> b
-- snd (_,x) = x 

------------------------------------------------------
{- 01 função que separa [(Int,Char)] em ([Int],[Char]) -}
unzipInt :: [(Int,Char)] -> [Int]
unzipInt [] = []
unzipInt ((d,_):t) = d : unzipInt t

unzipChar :: [(Int,Char)] -> [Char]
unzipChar [] = []
unzipChar ((_,c):t) = c : unzipChar t

myUnzip :: [(Int,Char)]->([Int],[Char])
myUnzip [] = ([],[])
myUnzip l = (unzipInt l, unzipChar l)

{- 02 versão em uma única função -}
myUnzipU :: [(Int,Char)]->([Int],[Char])
myUnzipU [] = ([],[])
myUnzipU ((d,c):t) = (d : fst (myUnzipU t) , c : snd (myUnzipU t))
------------------------------------------------------------
{- 03 função que junta duas listas em lista de duplas -}
myZip::[Bool]->[Char] ->[(Bool,Char)]  
myZip [] _ = []
myZip _ [] = []
myZip (a:b) (c:d) = (a,c) : myZip b d 

{- 04 função que recebe [Char] e retorna [(Bool,Char)] 
   True se Char for alfanumérico e False, caso contrário -}
setAlfa :: String -> [(Bool,Char)] 
setAlfa [] = []
setAlfa (x:xs)
   | isAlphaNum x = (True,x) : setAlfa xs
   | otherwise = (False,x) : setAlfa xs
   
{- 05 função que recebe [(Bool, Char)] e filtra alfanuméricos -}
filtraAlfa:: [(Bool,Char)] -> String
filtraAlfa [] = []
filtraAlfa ((b,c):t)
   | b  = c : filtraAlfa t
   | otherwise = filtraAlfa t

{- 06 função transforma String de alfa em Int -}
alfaToInt :: String -> [Int]
alfaToInt [] = []
alfaToInt (x:xs)
   | isDigit x = (ord x - ord '0') : alfaToInt xs
   | otherwise = alfaToInt xs

intToAlfa :: [Int] -> String
intToAlfa [] = []
intToAlfa (x:xs) = chr ( x + ord '0') : intToAlfa xs

{-- 07 função que gera tabela ascii -}
geraASCII:: Int -> [(Int,Char)]
geraASCII x 
   | x < 128 = (x,chr x ) : geraASCII (x+1)
   | otherwise = []