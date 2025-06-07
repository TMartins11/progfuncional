{- Assunto: listas e tuplas -}
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
listaVendas :: Int-> [Int]
listaVendas (-1) = []
listaVendas d = vendas d : listaVendas (d-1)

{- 02 função que retorna [[Int]] com listas de dia e venda -}
listaDiaVendas::Int->[[Int]]
listaDiaVendas (-1) = []
listaDiaVendas d = [d,vendas d] : listaDiaVendas (d-1)
  
----------------------------------------------------------
{- 03 função que ordena uma lista de inteiros -}
ordenaAux ::[Int]->[Int]
ordenaAux [] = []
ordenaAux [x] = [x]
ordenaAux (x:y:xs)
  | x > y = y : ordenaAux (x:xs)
  |otherwise = x : ordenaAux (y:xs) 

ordLista :: [Int] -> [Int]
ordLista xs
  | xs == ordenaAux xs  = xs
  | otherwise = ordLista (ordenaAux xs)

-------------------------------------------------------------------------
{- 04 função que ordena [[Int]] pelo primeiro Int de cada lista  -}
ordenaListaLista::[[Int]]->[[Int]]
ordenaListaLista xs
  | xs == ordLLAux xs = xs
  | otherwise = ordenaListaLista (ordLLAux xs) 

ordLLAux ::[[Int]]->[[Int]]
ordLLAux [] = []
ordLLAux [x] = [x]
ordLLAux (x:y:xs)
  | head x > head y = y : ordLLAux (x:xs)
  |otherwise = x : ordLLAux (y:xs) 
---------------------------------------------------------------------------
{- 05 função que ordena as listas internas de [[Int]] e, em seguida, ordena a [[Int]] -}
ordenaLILEAux::[[Int]] ->[[Int]] 
ordenaLILEAux [xs] = [ordLista xs]
ordenaLILEAux (x:y:xs) = ordLista x : ordenaLILEAux (y:xs)

ordenaLILE:: [[Int]] -> [[Int]]
ordenaLILE xs = ordenaListaLista (ordenaLILEAux xs)

-----------  tuplas --------------------------------------------------------
{- 06 função que gera uma lista de tuplas com dia e venda -}
listaTuplaDiaVenda :: Int-> [(Int, Int)]
listaTuplaDiaVenda (-1) = []
listaTuplaDiaVenda d = (d,vendas d) : listaTuplaDiaVenda (d-1)

reverseLT :: [(Int,Int)] -> [(Int,Int)]
reverseLT (h:t) = h : reverseLT t

listaTuplaDV :: Int -> [(Int,Int)]
listaTuplaDV d = reverse (listaTuplaDiaVenda d)

{- 07 função que gera o total de vendas-}
totalVendasT::[(Int, Int)] -> Int
totalVendasT [] = 0
totalVendasT ((_,v):t) = v + totalVendasT t  

{- 08 função que retorna a maior venda -}
maiorVendaT :: Int->[(Int, Int)] -> Int
maiorVendaT mv [] = mv
maiorVendaT mv ((_,v):t) = maiorVendaT (maxi mv v ) t

{- 08-b como implementar com apenas os parâmetros?-} 
maiorVendaT2 :: [(Int, Int)] -> Int    
maiorVendaT2 [] = 0 
maiorVendaT2 ((_,v):t)
  | v > maiorVendaT2 t = v
  | otherwise = maiorVendaT2 t


{- 09 função que retorna os dias das maiores vendas -}
diasMaioresVendas :: [(Int,Int)] -> Int -> [Int]
diasMaioresVendas [] _ = []
diasMaioresVendas ((d,v):t) mv
  | v >= mv = d : diasMaioresVendas t mv 
  | otherwise = diasMaioresVendas t mv

diasMV :: [(Int,Int)] -> [Int]
diasMV l = diasMaioresVendas l (maiorVendaT2 l)