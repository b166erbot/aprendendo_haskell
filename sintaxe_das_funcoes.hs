-- pattern matching

sorte 7 = "numero da sorte 7" -- corpo de função separada com argumento padrão 7
sorte 4 = "teste"  -- corpo de função separada com argumento padrão 4
sorte x = "sem sorte desta vez" -- resposta padrão para todas as outras entradas

-- fatorial com recursividade.
fatorial x = if x /= 1 then x * fatorial (x - 1) else x
fatorial2 1 = 1
fatorial2 x = x * fatorial (x - 1)

adicionarVetores a b = (fst a + fst b, snd a + snd b)
-- adicionarVetores (1, 2) (1, 1)
-- ou também assim:
adicionarVetores2 (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)
-- adicionarVetores (1, 2) (1, 1)

-- pegar um item em uma posição expecífica parecido com slicing
first (x, _, _) = x
second (_, y, _) = y
third (_, _, z) = z
-- as 3 funções acima só funcionam com tuplas

first2 [x, _, _] = x
second2 [_, y, _] = y
third2 [_, _, z] = z
-- as 3 funções acima só funcionam com listas

-- dica: se alguma coisa em uma função sai como lista, é obrigatório ter entrado
-- como lista. caso contrário causar um erro. (obs: vale também para tuplas)


-- dizer [] = "A lista está vazia."  -- não funciona como o esperado
-- ainda é muito cedo para saber de erros como este.
dizer (x: []) = "A lista tem um elemento: " ++ show x
dizer (x:y: []) = "A lista tem dois elementos: " ++ show x ++ " e " ++ show y
dizer (x:y:_) = (
    "Esta lista e' grande. os primeiros dois elementos sao: " ++ show x ++ " and "
    ++ show y)

tamanho [] = 0
tamanho (_:lista) = 1 + tamanho (lista)

soma [] = 0
soma (x:lista) = x + soma (lista)


primeira_letra "" = "String vazia!"
primeira_letra p@(x:string) = "A primeira letra de -" ++ p ++ "- e' " ++ [x]


main =
    print ([sorte 7, sorte 4, sorte 3]) >>
    print ([fatorial 5, fatorial2 5]) >>
    print ([adicionarVetores (1,2) (1,1), adicionarVetores (1,2) (1,1)]) >>
    print ([first (1, 2, 3), second (1, 2, 3), third (1, 2, 3)]) >>
    print ([first2 [1, 2, 3], second2 [1, 2, 3], third2 [1, 2, 3]]) >>
    print ([dizer ['a'], dizer [1,2], dizer ["oi","oioi","ola"]]) >>
    print (tamanho [1,2,3,4,3]) >>
    print (soma [1,1,1,1]) >>
    print ([primeira_letra "", primeira_letra "Ola oi hello"])
