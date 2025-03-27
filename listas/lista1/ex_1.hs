f1 :: Float -> Float
f1 x
  | x >= 0 = (x+4) / (x+2)
  |otherwise = 2 / x


f2 :: Float -> Float -> Float
f2 x y
    | x >= y =  x + y
    |otherwise = x - y
    
f3 :: Float -> Float -> Float -> Float
f3 x y z
      |(x+y) > z = x + y + z
      |(x+y) < z = x - y - z
      |otherwise = 0
      
main = do
  {- Casos Teste, devem retornar, respectivamente: 1.5, -1.0, 15.0, -5.0, 11.0, -11.0 e 0.0 -}
  print("Letra A")
  print(f1 2.0)     
  print(f1(-2.0))
  print("Letra B")
  print(f2 10 5)
  print(f2 5 10)
  print("Letra C")
  print(f3 2 5 4)
  print(f3 2 5 8)
  print(f3 2 5 7)
