dobro x = x * 2
dobrarDois x y = x * 2 + y * 2
dobrarDoisFuncional x y = dobro x + dobro y

main =
  print (dobro 3) >>
  print (dobrarDois 2 2) >>
  print (dobrarDoisFuncional 3 3)
