mult_tres x y z = x * y * z
mult_dois_args_com_nove = mult_tres 9
mult_com_dezoito = mult_dois_args_com_nove 2
compareComCem x = compare 100 x
dividePorDez = (/10)  -- jogar o argumento automaticamente antes do (/10)
eUpperCase = (`elem` ['A' .. 'Z'])  -- o argumento vem antes, portanto, crase!
famosoTwice funcao valor = funcao (funcao valor)

-- zipar_com recursivamente
zipar_com _ [] _ = []  -- se receber uma lista vazia, retorna uma lista vazia
zipar_com _ _ [] = []  -- se receber uma lista vazia, retorna uma lista vazia
zipar_com funcao (x:lista) (y: lista2) = funcao x y : zipar_com funcao lista lista2

-- meu_flip é um flip normal
meu_flip funcao x y = funcao y x

-- meu_map com recursividade
meu_map _ [] = []  -- entra lista vazia, sai lista vazia
meu_map funcao (x:lista) = funcao x : meu_map funcao lista

meu_filter _ [] = [] -- entra vazio, sai vazio
meu_filter predicado (x:lista)
    | predicado x = x : meu_filter predicado lista
    | otherwise = meu_filter predicado lista


organizar [] = []  -- entra e sai vazio.
organizar (x:lista) =
    let
        pequenos = organizar (filter (<=x) lista)
        grandes = organizar (filter (>x) lista)
    in pequenos ++ [x] ++ grandes


-- variável abaixo
maior_divisivel = head (filter predicado [100000, 99999..])
    where predicado x = mod x 3829 == 0


-- corrente recursiva
corrente 1 = [1]
corrente numero
    | even numero = numero:corrente (div numero 2)
    | odd numero = numero:corrente (numero * 3 + 1)


soNumerosGrandes = length (filter isLong (map corrente [1..100]))
    where isLong lista = length lista > 15


funcaoComLista = map (*) [0..]


main =
    print (max 4 5) >>
    print ((max 4) 5) >>
    print (mult_dois_args_com_nove 2 3) >>
    print (mult_com_dezoito 10) >>
    print (compareComCem 10) >>
    print (dividePorDez 50) >>
    print (eUpperCase 'a') >>
    print (
        (famosoTwice dividePorDez 500, famosoTwice (+30) 50,
         famosoTwice (++ " ha") "hey", famosoTwice ("haha " ++) "hey",
         famosoTwice (mult_tres 2 2) 9, famosoTwice (3:) [1])) >>
    print (
        (zipar_com (+) [4,2,5,6] [2,6,2,3]), zipar_com max [6,3,2,1] [7,3,1,5],
         zipar_com (++) ["oi ", "ola ", "hey "] (cycle ["pessoal"]),
         zipar_com (*) (replicate 5 2) [1..],
         zipar_com (zipar_com (*)) [[1,2,3],[3,5,6],[2,3,4]]
         [[3,2,2],[3,4,5],[5,4,3]]) >>
    print (meu_flip zip [1,2,3] "ola") >>
    print (
        (meu_map (+3) [1..5], meu_map (replicate 3) [3..6],
         meu_map (++ "!") ["quetinho", "quetim..", "tey"],
         meu_map (meu_map (^2)) [[1,2],[3,4,5,6],[7,8]],
         meu_map fst [(1,2),(3,5),(6,3),(2,6),(2,5)])) >>
    print ((
        meu_filter (>3) [1,5,3,2,1,6,4,3,2,1], meu_filter (==3) [1..5],
        meu_filter even [1..10],
        let naoNulo x = not (null x) in
            meu_filter naoNulo [[1,2,3],[],[3,4,5],[2,2],[],[],[]],
        meu_filter (`elem` ['a' .. 'z']) "u LaUgH aT mE BeCaUsE I aM diFfeRent",
        meu_filter (`elem` ['A'..'Z'])
            "i lauGh At You BecAuse u r aLL the Same")) >>
    print (organizar [1,4,3,6,7]) >>
    print (maior_divisivel) >>
    print (sum (takeWhile (<10000) (filter odd (map (^2) [1..])))) >>
    print ([corrente 10, corrente 30]) >>
    print (soNumerosGrandes) >>
    print ((funcaoComLista !! 4) 5)
