-- read "4"  -- um read sozinho (sem algo a mais a frente) causará um erro.

-- mas com anotação...
anotado = (
    read "4" :: Int, read "3" :: Float, read "[1,2,3,4]" :: [Int],
    read "(3, 'a')" :: (Int, Char))

main = print (anotado)
