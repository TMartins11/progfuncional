{-Seja o cadastro de pessoas dado pela função a seguir:

pessoa rg
    | rg == 1 = ("João Silva", 12, ’m’)
    | rg == 2 ("Jonas Souza", 51, ’m’)
    ...
    | rg == 321 = ("Jocileide Strauss", 21, ’f’)
    | otherwise = ("Não há ninguém mais", 9999, ’x’)

Construa funções que retornem os seguintes dados:

(a) O nome da pessoa de menor idade até um determinado registro.
(b) A idade média de todas as pessoas até um dado registro.
(c) O número de pessoas do sexo masculino.
(d) O número do registro da pessoa de maior idade.

-}

-- (a) O nome da pessoa de menor idade até um determinado registro.
