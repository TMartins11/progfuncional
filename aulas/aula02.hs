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
sumList (a:x) = a + sumList x

{- 02 função que informa se o elemento está presente na lista -}
searchList::Int->[Int]->Bool
searchList y [] = False
searchList y (a:x)
    | a == y =  True
    | otherwise = searchList y x

{-03 remove todas ocorrências de y em uma lista -}
deleteList::Int->[Int]->[Int]
deleteList y [] = []
deleteList y (a:x)
    | y == a = deleteList y x
    | otherwise = a : deleteList y x

{-04 informa o tamanho de uma lista -}
lenghtList::[Int]->Int
lenghtList [] = 0
lenghtList (a:x) = 1 + lenghtList x

{-05 conta a ocorrência de um Int em [Int] -}
contList::Int->[Int]->Int
contList c [] = 0
contList c (a:x)
    | c == a = 1 + contList c x
    | otherwise = 0 + contList c x

{- 06 inverte a lista -}
reverseList:: [Int]->[Int]
reverseList [] = []
reverseList (a:x) =  reverseList x ++ [a] 


{- 07 inverte elementos das listas internas -}
reverseIntList :: [[Int]] -> [[Int]]
reverseIntList [] = []
reverseIntList (a:x) = reverseList a : reverseIntList x
 

{- 08 função que exclui a penúltima ocorrência de um número na lista-}
app :: [Int]->Int->Int->[Int]
app [] _ _ = [] 
app l _ 0 = l
app l _ 1 = l
app (a:b) x i 
  | a == x && i == 2 = b
  | a == x = a: app b x (i-1)
  | otherwise = a: app b x i 

{-
appS::[Int]->Int->[Int]
appS l x = app l x (ocorrencia l x)
-}
-------------------------------------------------------------
{- Exercícios
     Implementar as funções: 
       myHead que recebe uma lista x e retorna a cabeça de x
       myTail que recebe uma lista x e retorna a lista x sem a cabeça
       myLast que recebe uma lista x e retorna o último elemento de x
       myInit que recebe uma lista x e retorna a lista x sem o último elemento
-}

myHead :: [Int] -> [Int]
myHead [] = []
myHead (a:x) = [a]

myTail :: [Int] -> [Int]
myTail [] = []
myTail (a:x) = x

myLast :: [Int] -> Int
myLast [x] = x
myLast (a:x) = myLast x

myInit :: [Int] -> [Int]
myInit [] = []
myInit [x] = []
myInit (a:x) = a: myInit x 