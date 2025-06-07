import Data.Char

type Dia = Int
type Venda = Int

periodo::Int
periodo = 7

answer :: Int
answer = 42

square :: Int -> Int
square x = x * x

soma::Int->Int->Int
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
maiorVenda 0 v = v 
maiorVenda d v
   | f d >= v = maiorVenda (d-1) (f d)
   | otherwise = maiorVenda (d-1) v 

{- Exercícios: 
implemente uma função que retorne o dia em que houve a maior venda (função f)-}
diaMaiorVenda01::Int-> Int
diaMaiorVenda01 1 = 1
diaMaiorVenda01 d
   | f d > f (diaMaiorVenda01 (d-1)) = d
   | otherwise = diaMaiorVenda01(d-1)

diaMaiorVenda02::Int->Int->Int
diaMaiorVenda02 1 _ = 1
diaMaiorVenda02 d mv
   | f d == mv = d
   | otherwise = diaMaiorVenda02 (d-1) mv 
       
{- implemente uma função que retorne a quantidade de vendas do período -}
totalVendas :: Int -> Int
totalVendas 0 = 0
totalVendas d = f d + totalVendas (d-1)

{- implemente uma função que retorne a média de vendas-}   
mediaVendas :: Int -> Int
mediaVendas d = div (totalVendas d)  d  