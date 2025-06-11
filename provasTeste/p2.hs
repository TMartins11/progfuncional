import Data.Char

--Questão 1
--Poderia usar isDigit do Data.Char
--Faça a função func1 que receba uma string e retorne a quantidade de caracteres numéricos presentes na string
func1 :: String -> Int
func1 [] = 0
func1 (x:xs)
    | isDigit x = 1 + func1 xs
    | otherwise = func1 xs

func1Esp :: String -> Int
func1Esp xs = length[x| x <-xs, isDigit x]

--Questão 2
-- Faça a função func2 que receba duas strings e retorne a string com maior quantidade de caracteres numéricos. 
-- Caso a quantidade seja a mesma entre elas, qualquer uma poderá ser retornada. Use necessariamente, func1.
-- para esse problema a base é desnecessária
func2 :: String -> String -> String
func2 x y
    | func1 x >= func1 y = x
    | otherwise = y

--Questão 3
-- Faça  a função func3 de alta ordem, necessariamente com uso de list comprehension, que receba, além da função
-- parâmetro, um [(String, String)] e retorne [String] com as strings  com maior quantidade de caracteres 
-- numérico de cada dupla. Adote, como tipo do parâmetro da função recebida por func3, o tipo da função da 
-- questão anterior, func2.

func3 :: (String -> String -> String) -> [(String,String)] -> [String]
func3 func2 xs = [func2 x y| (x,y) <- xs]

func3Esp :: (String -> String -> String) -> [(String,String)] -> [String]
func3Esp func2 xs = [func2 (fst x) (snd x)| x <- xs]

--Questão 4
-- Considere os códigos em Haskell a seguir e responda
-- funT _ _ _ [] = []
-- funT p h t (a:x)
--    | t a = h (p a) : funT p h t x
--    | otherwise = funT p h t x 

--a) Apresente um cabeçalho para a função possui. Caso algum tipo não seja rígido, use o tipo genérico. -- Cabeçalho
possui :: (a,Bool) -> Bool
possui a = snd (a) 

--b) Apresente um cabeçalho para a função limite. Caso algum tipo não seja rígido, use o tipo genérico.
limite :: [a] -> (Int, [a])
limite [] = (0, []) -- Função
limite x = (length x, x) -- Função

--c) Apresente um cabeçalho para a função muda. Caso algum tipo não seja rígido, use o tipo genérico.
muda :: (a,b) -> (b,a)
muda a = reverse (fst (a)) -- Função

--d) Faça uma chamada para a função funT passando adequadamente parâmetros a ela. No caso, como ela é de alta ordem,
-- você deverá usar apenas as funções já definidas no código apresentado nesta questão. Já o último parâmetro, você
-- deverá propô-lo. Contudo, não pode ser lista vazia.

funT _ _ _ [] = [] 
funT p h t (a:x)
   | t a = h (p a) : funT p h t x  
   | otherwise = funT p h t x 

-- Chamada
funT muda limite possui [(1,True),(2,False)]