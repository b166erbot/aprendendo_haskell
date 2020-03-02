-- instâncias de Bounded (ou limite) contém um valor mínimo e máximo.

main =
    print (minBound :: Int) >>
    print (maxBound :: Char) >>
    print (maxBound :: Bool) >>
    print (minBound :: Bool)
