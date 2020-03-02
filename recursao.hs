maximo [] = error "lista esta vazia"
maximo [x] = x
maximo (x:lista)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximo lista


replicar n x
    | n <= 0 = []
    | otherwise = x:replicar (n-1) x


pegar n _
    | n <= 0 = []
pegar _ [] = []
pegar n (x:lista) = x : pegar (n-1) lista


reverso [] = []
reverso (x:lista) = reverso lista ++ [x]


repetir x = x:repetir x


zipar _ [] = []
zipar [] _ = []
zipar (x:lista) (y:lista2) = (x,y):zipar lista lista2


contem a [] = False
contem a (x:lista)
    | a == x = True
    | otherwise = contem a lista


quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted = quicksort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted


main =
    print (maximo [1,2,3,4]) >>
    print (maximo [4,3,2,1]) >>
    print (maximo [1]) >>
    print (maximo [1,2]) >>
    -- print (maximo []) >>
    print (replicar 2 "texto_replicado ") >>
    print (pegar 2 "hs py cs") >>
    print (map reverso ["exemplo", "olpmexe"]) >>
    print (pegar 3 (repetir "oi ")) >>
    print (zipar "12345" "abcde") >>
    print (contem 'a' "abcde") >>
    print (quicksort [5,2,4,1,1,6,3])
