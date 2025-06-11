{- Para a solução dos próximss itens, sempre use uma função implementada no ítem anterior para
auxiliar nas novas implementações, se possível. Também, use sempre o underscore quando um
parâmetro não for necessário. Considere, para os itens que se seguem, as funções e tipos:
-}

type Acervo = [(Isbn, Titulo, Reserva, Volumes)]
type Emprestimo = [(Matricula, Isbn)]
type Isbn = Int -- Isbn de um livro
type Volumes = Int -- quantidade no acervo
type Titulo = String -- título do livro
type Matricula = String -- matrícula do discente
type Reserva = Bool -- deve permanecer na biblioteca


-- Dados globais
acervo :: Acervo
acervo = [
    (1, "Haskell Para Iniciantes", False, 3),
    (2, "Programação Funcional", True, 2),
    (3, "Linguagens Formais", False, 1)
    ]

emprestimo :: Emprestimo
emprestimo = [
    ("2021001", 1),
    ("2021002", 1),
    ("2021003", 3)
    ]



{-(a) O campo Reserva, de acervo, é True quando o livro é reservado ao uso exclusivo na
biblioteca. Então, um livro só pode ser emprestado caso esse campo seja False. Sabendo
disso, faça uma solução em Haskell, chamada por func_1, que receba um Isbn e o acervo
e, em seguida, informe se o livro para tal Isbn pode ser emprestado (True) ou não (False).
-}
func_1 :: Isbn -> Acervo -> Bool
func_1 _ [] = False
func_1 y ((x,_,r,_):t)
    | y == x && not r = True
    | y == x && r = False 
    | otherwise = func_1 y t  

{-(b) Faça uma solução em Haskell chamada func_2 que receba um Isbn e informe quantos
volumes daquele livro estão emprestados.-}
func_2::Isbn -> Emprestimo -> Int
func_2 y [] = 0
func_2 y ((_,x):t)
    | y == x = 1 + func_2 y t
    | otherwise = func_2 y t 


{-(c) Faça uma solução em Haskell, chamada func_3 que receba um Isbn e retorne quantos
livros há no acervo. -}

func_3 :: Isbn -> Acervo -> Int
func_3 _ [] = 0
func_3 y ((x,_,_,v):t)
    | y == x = v
    | otherwise = func_3 y t 

{-(d) Faça uma solução em Haskell, chamada func_4 que receba um Isbn e retorne a quantidade
de livros disponível para empréstimo. Para tanto, deve-se observar os três pontos: a)
quantos livros você tem no acervo; b) quantos estão emprestados; c) se Reserva, retorne
zero. -}
func_4 :: Isbn -> Int
func_4 y 
    | not (func_1 y acervo) = 0
    | otherwise = func_3 y acervo - func_2 y emprestimo

{-(e) Faça uma solução em Haskell, chamada func_5 que receba uma matrícula e um Isbn e, em
seguida, retorne a lista de empréstimo atualizada. Caso o livro não possa ser emprestado
(reservado ou sem disponibilidade), deve retornar a lista de empréstimo sem alterações.
-}
func_5 :: Matricula -> Isbn -> Emprestimo
func_5 x y
    | func_4 y > 0 = (x,y) : emprestimo 
    | otherwise = emprestimo