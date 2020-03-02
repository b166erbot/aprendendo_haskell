-- [função de saída | entrada, predicado]

lista = [x * 2 | x <- [1..10]]
lista2 = [x * 2 | x <- [1..10], x * 2 >= 12]
lista3 = [x | x <-[50..100], x `mod` 7 == 3]
funcao xs = [ if x < 10 then "boom!" else "bang!" | x <- xs, odd x ]  -- função
lista4 = [x | x <- [10..20], x /= 13, x /= 15, x /= 19]  -- vários predicados
lista5 = [x * y | x <- [2,5,10], y <- [8,10,11]]  -- várias entradas
lista6 = [x * y | x <- [2,5,10], y <- [8, 10, 11], x * y > 50]
texto = ["a", "b", "c"]
texto2 = ["1", "2", "3"]
lista7 = [x ++ " " ++ y | x <- texto, y <- texto2]

main =
    print lista >>
    print lista2 >>
    print lista3 >>
    print (funcao [0..20]) >>
    print lista4 >>
    print lista5 >>
    print lista6 >>
    print lista7
