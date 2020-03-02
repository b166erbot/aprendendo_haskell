meuHead [] = error "a lista esta vazia."
meuHead (x:_)  = x


meuHead2 lista =
    case lista of
        [] -> error "lista vazia"
        (x:_) -> x


-- função com case of
listaDescritiva lista = "A lista esta " ++ case lista of
    [] -> "vazia."
    [x] -> "com um item"
    lista -> "com dois ou mais itens"


-- função com where
listaDescritiva2 lista = "A lista esta " ++ variavel lista
    where
        variavel [] = "vazia"
        variavel [x] = "com um item"
        variavel lista = "com dois ou mais itens"


main =
    print (meuHead [4,3,2,1]) >>
    print (meuHead2 [4,3,2,1]) >>
    -- testei individualmente cada linha abaixo. não há nescessidade de deixar
    -- executando o erro propositalmente.
    -- print (meuHead2 [])  -- gera um erro esperado.
    -- print (meuHead [])  -- gera um erro esperado.
    print (map listaDescritiva [[], [1], [1,2]]) >>
    print (map listaDescritiva2 [[], [1], [1,2]])
