dobrarNumeroPequeno x = (if x > 100 then x else x * 2) + 1

lista = [dobrarNumeroPequeno 100, dobrarNumeroPequeno 101]

main = print (lista)
