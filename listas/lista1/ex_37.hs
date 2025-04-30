type Acervo = [(Isbn, Titulo, Reserva, Volumes)]
type Emprestimo = [(Matricula, Isbn)]
type Isbn = Int -- Isbn de um livro
type Volumes = Int -- quantidade no acervo
type Titulo = String -- título do livro
type Matricula = String -- matrícula do discente
type Reserva = Bool -- deve permanecer na biblioteca

-- Acervo de exemplo
acervo:: Acervo
acervo =
  [ (1001, "Programação Funcional com Haskell", False, 3)
  , (1002, "Estruturas de Dados em C", True, 2)
  , (1003, "Cálculo I", False, 5)
  , (1004, "Inteligência Artificial", True, 1)
  ]

-- Exemplo Empréstimos
emprestimos :: Emprestimo
emprestimos =
  [ ("202312345", 1001)
  , ("202398765", 1003)
  , ("202376543", 1002)
  , ("2032141214", 1001)
  ]

{-a) O campo Reserva, de acervo, é True quando o livro é reservado ao uso exclusivo na
biblioteca. Então, um livro só pode ser emprestado caso esse campo seja False. Sabendo
disso, faça uma solução em Haskell, chamada por func_1, que receba um Isbn e o acervo
e, em seguida, informe se o livro para tal Isbn pode ser emprestado (True) ou não (False).
-}
func_1 :: Isbn -> Acervo -> Bool
func_1 _ [] = False
func_1 y ((i,_,r,_): xs)
  | y == i && r == True = False
  | y == i && r == False = True
  | otherwise = func_1 y xs
 

{-b)aça uma solução em Haskell chamada func_2 que receba um Isbn e informe quantos
volumes daquele livro estão emprestados.
-}
func_2 :: Isbn -> Emprestimo -> Int
func_2 _ [] = 0
func_2 y ((_,c) : xs)
  | y == c = 1 + func_2 y xs
  | otherwise = func_2 y xs



{-c) Faça uma solução em Haskell, chamada func_3 que receba um Isbn e retorne quantos
livros há no acervo.
-}
func_3 :: Isbn -> Acervo -> Int
func_3 _ [] = 0
func_3 y ((c,_,_,v): xs)
  | y == c = v
  | otherwise = func_3 y xs



{-d)Faça uma solução em Haskell, chamada func_4 que receba um Isbn e retorne a quantidade
de livros disponível para empréstimo. Para tanto, deve-se observar os três pontos: a)
quantos livros você tem no acervo; b) quantos estão emprestados; c) se Reserva, retorne
zero.-}
func_4 :: Isbn -> Int
func_4 x 
  | func_1 x acervo == True  && func_3 x acervo /= 0 = func_3 x acervo - func_2 x emprestimos
  | otherwise = 0



{-e)Faça uma solução em Haskell, chamada func_5 que receba uma matrícula e um Isbn e, em
seguida, retorne a lista de empréstimo atualizada. Caso o livro não possa ser emprestado
(reservado ou sem disponibilidade), deve retornar a lista de empréstimo sem alterações.-}
func_5 :: Matricula -> Isbn -> Emprestimo
func_5 x y
  | func_4 y /= 0 = (x,y) : emprestimos
  | otherwise = emprestimos