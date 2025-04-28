import Data.Char

type Dia = Int
type Venda = Int

periodo :: Int
periodo = 7

answer :: Int
answer = 42

square :: Int -> Int
square x = x * x

soma :: Int -> Int -> Int
soma z k = z+k

allEqual :: Int -> Int -> Int -> Bool
allEqual m n p = (m==n) && (n==p)

maxi :: Int -> Int -> Int
maxi m n
   |m >= n = m
   |otherwise = n


f :: Dia -> Venda
f 1 = 9
f 2 = 7
f 3 = 15
f 4 = 14
f 5 = 8
f 6 = 0
f 7 = 3
f x = -1

{- função que retorne a maior venda da semana -}
maiorVenda :: Int -> Int -> Int
maiorVenda 0 y = y
maiorVenda x y
   | f x > y = maiorVenda(x-1) (f x)
   | otherwise = maiorVenda (x-1) y

maiorVenda7 :: Int
maiorVenda7 = maiorVenda 7 0

{- Exercícios: 
implemente uma função que retorne o dia em que houve a maior venda (função f)-}
diaMV :: Int -> Int -> Int
diaMV x y
   | f x == maiorVenda x y = x
   | otherwise = diaMV(x-1) y 

{- implemente uma função que retorne a quantidade de vendas do período -}
qtdVendas :: Int -> Int -> Int
qtdVendas 0 y = y
qtdVendas x y = qtdVendas(x-1) (y + f x)

{- implemente uma função que retorne a média de vendas-}
mediaVendas :: Int -> Int
mediaVendas x = div (qtdVendas x 0) x    