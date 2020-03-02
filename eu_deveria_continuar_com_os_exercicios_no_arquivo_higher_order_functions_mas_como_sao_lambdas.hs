-- tive que recriar a função porque preciso dela aqui
corrente 1 = [1]
corrente numero
    | even numero = numero:corrente (div numero 2)
    | odd numero = numero:corrente (numero * 3 + 1)


-- variável
comprimento_lista = length
    (filter (\lista -> length lista > 15) (map corrente [1..100]))


zipar_com _ [] _ = []  -- se receber uma lista vazia, retorna uma lista vazia
zipar_com _ _ [] = []  -- se receber uma lista vazia, retorna uma lista vazia
zipar_com funcao (x:lista) (y: lista2) = funcao x y : zipar_com funcao lista lista2


-- flip com lambda
meu_flip funcao = \x y -> funcao y x


main =
    print (comprimento_lista) >>
    print (zipar_com (\x y -> (x * 30 + 3) / y) [5,4..1] [1..5]) >>
    print (map (\(a,b) -> a + b) [(1,2),(3,5),(6,3),(2,6),(2,5)]) >>
    print (meu_flip (\x y -> x ++ y) " oi " "ola")
