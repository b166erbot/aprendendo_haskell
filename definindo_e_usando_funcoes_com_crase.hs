a `minhaComparacao` b
    | a > b = GT
    | a == b = EQ
    | otherwise = LT


main = print (3 `minhaComparacao` 2)
