quaoVelhoE idade
    | idade <= 10 = "voce e' muito novo"
    | idade <= 17 = "voce esta crescendo"
    | idade == 18 = "voce e' maior de idade"
    | idade <= 30 = "voce esta em uma idade media"
    | idade <= 50 = "voce esta velho"
    | otherwise = "vida longa e prospera"


maximo a b
    | a > b = a
    | otherwise = b
-- maximo a b | a > b = a | otherwise = b


main =
    print (map quaoVelhoE [10, 15, 18, 30, 50, 60]) >>
    print (maximo 1 2)
