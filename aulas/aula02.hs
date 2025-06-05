{-Assunto: Listas
  Os conceitos introdutórios sobre listas foram apresentados em sala.
  Agora, considerando os casos mais simples, com apenas listas de inteiros,
  implemente as funções abaixo, considerando os operadores ++ e :
    ++ (concatena listas)
     : (insere um elemento na lista)
-}
     
{- 01 função que soma os elementos de uma lista -}
sumList::[Int]->Int
sumList [] = 0
sumList (h:t) = h + sumList(t);

{- 02-localiza elemento em lista -}
searchList::Int->[Int]->Bool
searchList x [] = False
searchList x (h:t)
  | x == h = True
  | otherwise = searchList x (t);

{-03 remove todas ocorrências de y em uma lista -}
deleteList::Int->[Int]->[Int]
deleteList x [] = []
deleteList x (h:t)
  | x == h = deleteList x (t)
  | otherwise =  h : deleteList x t 

{-04 informa o tamanho de uma lista -}
lenghtList::[Int]->Int
lenghtList [] = 0
lenghtList (h:t) = 1 + lenghtList (t)

{-05 conta a ocorrência de um Int em [Int] -}
contList::Int->[Int]->Int
contList x [] = 0
contList x (h:t)
  | x == h = 1 + contList x (t)
  | otherwise = contList x (t)

{- 06 inverte a lista -}
reverseList:: [Int]->[Int]
reverseList [] = []
reverseList (h:t) = reverseList t ++ [h]


{- 07 inverte elementos das listas internas -}
reverseIntern:: [[Int]] -> [[Int]]
reverseIntern [] = []
reverseIntern (h:t) = reverseList h : reverseIntern t 

{- 08 função que exclui a penúltima ocorrência de um número na lista-}
-- app :: [Int]-> Int -> Int -> [Int]
-- app [] _ _ = [] 
-- app l _ 0 = l
-- app l _ 1 = l
-- app (a:b) x i 
--   | a==x && i ==2 = b
--   | a == x = a:(app b x (i-1))
--   | otherwise = a:(app b x (i)) 

-- appS::[Int]->Int->[Int]
-- appS l x = app l x (ocorrencia l x)


-- Quero deletar o penúltimo, logo, tenho que contar quantas vezes aparece, e guardar o índice do penúltimo. 


-- deletePenultimate :: Int -> [Int] -> [Int]


-------------------------------------------------------------
{- Exercícios
     Implementar as funções: 
       myHead que recebe uma lista x e retorna a cabeça de x
       myTail que recebe uma lista x e retorna a lista x sem a cabeça
       myLast que recebe uma lista x e retorna o último elemento de x
       myInit que recebe uma lista x e retorna a lista x sem o último elemento
-}

myHead :: [Int] -> Int
myHead (h:t) = h

myTail :: [Int] -> [Int]
myTail [] = []
myTail (h:t) = t

myLast :: [Int] -> Int
myLast [h] = h
myLast (h:t) = myLast t

myInit :: [Int] -> [Int]
myInit [] = []
myInit [h] = []
myInit (h:t) = h : myInit t 