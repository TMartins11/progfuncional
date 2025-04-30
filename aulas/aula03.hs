{- Assunto: listas e tuplas -}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use map" #-}
{-# HLINT ignore "Use foldr" #-}
periodo::Int
periodo = 7

maxi :: Int -> Int -> Int
maxi m n
   |m >= n = m
   |otherwise = n


-- tabela de vendas
vendas :: Int -> Int
vendas 0 = 0
vendas 1 = 41
vendas 2 = 72
vendas 3 = 48
vendas 4 = 0
vendas 5 = 91
vendas 6 = 55
vendas 7 = 30

{- 01 função que retorna uma lista de vendas -}
listaVendas :: Int -> [Int]
listaVendas 0 = []
listaVendas x = vendas x : listaVendas(x-1)

reverseList :: [Int] -> [Int]
reverseList [] = []
reverseList (a:x) = reverseList x ++ [a]

listaVendasFinal :: Int -> [Int]
listaVendasFinal x = reverseList(listaVendas x)

{- 02 função que retorna [[Int]] com listas de dia e venda -}
reverseDList :: [[Int]] -> [[Int]]
reverseDList [] = []
reverseDList (a:x) = reverseDList x ++ [a]

listaDiaVendas ::Int -> [[Int]]
listaDiaVendas 0 = []
listaDiaVendas x = [x, vendas x] : listaDiaVendas(x-1)

listaDiaVendasFinal :: Int -> [[Int]]
listaDiaVendasFinal x = reverseDList(listaDiaVendas x)
----------------------------------------------------------
{- 03 função que ordena uma lista de inteiros -}
insereOrd :: Int -> [Int] -> [Int]
insereOrd y [] = [y]
insereOrd y (a:x)
  | y < a = y : a : x
  | otherwise = a : insereOrd y x 

ordenaLista :: [Int] -> [Int]
ordenaLista [] = []
ordenaLista (a:x) = insereOrd a (ordenaLista x)   

-------------------------------------------------------------------------
{- 04 função que ordena [[Int]] pelo primeiro Int de cada lista  -}

ordenaListaLista :: [[Int]]->[[Int]]
ordenaListaLista [] = []
ordenaListaLista (a:x) = ordenaLista a : ordenaListaLista x

---------------------------------------------------------------------------
{- 05 função que ordena as listas internas de [[Int]] e, em seguida, ordena a [[Int]] -}
insereOrdListaLista :: [Int] -> [[Int]]
-- Quero inserir uma lista em uma lista de listas, de modo ordenado 
-- ordenaLILE::[[Int]] ->[[Int]]


-- [[4,3],[6,5], [2,1]] = [[1,2],[3,4] [5,6]]
-----------  tuplas --------------------------------------------------------
{- 06 função que gera uma lista de tuplas com dia e venda -}
listaTuplaDiaVenda :: Int-> [(Int, Int)]
listaTuplaDiaVenda 0 = []
listaTuplaDiaVenda x = (x, vendas x) : listaTuplaDiaVenda (x-1)

reverseTupla :: [(Int,Int)] -> [(Int,Int)]
reverseTupla [] = []
reverseTupla ((dia,venda):resto) = reverseTupla resto ++ [(dia,venda)]

listaTuplaDVFinal :: Int -> [(Int,Int)]
listaTuplaDVFinal x = reverseTupla(listaTuplaDiaVenda x)

{- 07 função que gera o total de vendas-}
totalVendasT :: [(Int, Int)] -> Int
totalVendasT [] = 0
totalVendasT ((_,venda):resto) = venda + totalVendasT resto

{- 08 função que retorna a maior venda -}
maiorVendaT :: Int -> [(Int, Int)] -> Int
maiorVendaT y [] = y
maiorVendaT y ((dia,venda):resto) 
  | y < venda  = maiorVendaT venda resto
  | otherwise = maiorVendaT y resto

{- 08-b como implementar com apenas os parâmetros? -} 
maiorVendaT2 :: [(Int, Int)] -> Int 
maiorVendaT2 [] = 0
maiorVendaT2 ((dia,venda):resto)
  |venda > maiorVendaT2 resto = venda
  |otherwise = maiorVendaT2 resto   
  
{- 09 função que retorna os dias das maiores vendas -}
bestSales :: Int -> [(Int,Int)] -> [(Int,Int)]
bestSales _ [] = []
bestSales x ((dia,venda):resto) 
  | x == venda = (dia,venda) : bestSales x resto
  | otherwise = bestSales x resto
