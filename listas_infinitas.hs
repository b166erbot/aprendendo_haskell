lista = take 10 (cycle [1,2,3])
texto = take 12 (cycle "ola ") ++ "!"
lista2 = take 10 (repeat 5)
lista3 = replicate 3 10

main =
  print lista >>
  print texto >>
  print lista2 >>
  print lista3
