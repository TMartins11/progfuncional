{-Considere a sequência:√6;√6 +√6;
√6 +√6 +√6; ...; com tendência ao +∞. Faça, em Haskell,
uma função para calcular o i−ésimo termo desta sequência, considerando i0 =√6
-}

sequencia :: Double -> Double  
sequencia 0 = sqrt 6
sequencia x = sqrt 6 + sequencia (x-1)
