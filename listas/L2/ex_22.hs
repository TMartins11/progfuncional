{-Compare as seguintes implementações de uma função que verifica a existência de um elemento
na lista e responda:

procuraElemento :: Int -> [Int] -> Bool
procuraElemento n (x:xs) = n == x || procuraElemento n xs

procuraElemento2 :: Int -> [Int] -> Bool
procuraElemento2 n (x:xs) = procuraElemento n xs || n == x

(a) Ambas as implementações estão corretas para o problema em questão? Se sim, qual a
diferença existente na computação das duas funções?

(b) Qual implementação é mais eficiente?
-}



{- 
a) Sim, ambas estão corretas. A diferença existe pela ordem das comparações, a função 1 verifica primeiro se n == x, e se
for verdade, já retorna True, apenas se falhar no primeiro caso que ele pula ao segundo. A segunda implementação já busca 
recursivamente de forma direta, deixando a computação menos eficiente. 

b) A primeira implementação é mais eficiente. 
-}