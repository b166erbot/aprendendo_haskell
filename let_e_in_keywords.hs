cilindro r h =
    -- calcula a base de um cilindro conforme o raio e a altura.
    -- (radious, height) = (r, h)
    let  -- define as variáveis
        lado = 2 * pi * r * h
        topo = pi * r ^ 2
    in  -- e retorna o que é preciso da funcao
        lado + 2 * topo


calcBmis lista = [bmi | (w, h) <- lista, let bmi = w / h ^ 2, bmi >= 25]


main =
    print (cilindro 15 60) >>
    print (4 * (if 10 > 5 then 10 else 0) + 2) >>
    print (4 * (let a = 9 in a + 1) + 2) >>
    -- funções locais usando let e in.
    print ([let quadrado x = x * 2 in (quadrado 5, quadrado 3, quadrado 2)]) >>
    print (
        let a = 100; b = 200; c = 300 in a * b * c,
        let foo="Hey "; bar = "there!" in foo ++ bar) >>
    -- desempacotamento de variáveis com let e in.
    print ((let (a,b,c) = (1,2,3) in a + b + c) * 100) >>
    print (calcBmis (zip [50, 60 .. 130] (cycle [1.50]))) >>
    print (let mult_soma x y z = x * y + z in mult_soma 1 2 3)
