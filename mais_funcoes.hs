tupla = (read "True" || False, read "8.2" + 3.8, read "[1,2,3,4]" ++ [3])
lista = [show 3, show 5.334, show True]

main =
    print (tupla) >>
    print (lista)
