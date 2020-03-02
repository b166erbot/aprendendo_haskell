argumentos = [(50, 1.70), (60, 1.70), (80, 1.70), (120, 1.70)]


massa_corporal peso altura
    | resultado <= 18.5 = "voce esta abaixo do nivel minimo de massa corporal"
    | resultado <= 25.0 = "sua massa corporal esta na media"
    | resultado <= 30.0 = "voce esta um pouquinho acima da media"
    | otherwise = "voce esta com comeco de obesidade e precisa ir em um medico"
    where resultado = peso / altura ^ 2


-- variáveis dentro do where.
-- massa_corporal2 peso altura
--     | resultado <= magro = "voce esta abaixo do nivel minimo de massa corporal"
--     | resultado <= normal = "sua massa corporal esta na media"
--     | resultado <= gordo = "voce esta um pouquinho acima da media"
--     | otherwise = "voce esta com comeco de obesidade e precisa ir em um medico"
--     where
--         resultado = peso / altura ^ 2
--         magro = 18.5
--         normal = 25.0
--         gordo = 30.0


-- desempacotamento de variáveis de maneira prática.
-- massa_corporal3 peso altura
--     | resultado <= magro = "voce esta abaixo do nivel minimo de massa corporal"
--     | resultado <= normal = "sua massa corporal esta na media"
--     | resultado <= gordo = "voce esta um pouquinho acima da media"
--     | otherwise = "voce esta com comeco de obesidade e precisa ir em um medico"
--     where
--         resultado = peso / altura ^ 2
--         (magro, normal, gordo) = (18.5, 25.0, 30.0)


-- iniciais de um nome.
iniciais primeiro_nome ultimo_nome = [f] ++ ". " ++ [l] ++ "."
    where
        (f:_) = primeiro_nome
        (l:_) = ultimo_nome


main =
    print ([massa_corporal x y | (x, y) <- argumentos]) >>
    -- print ([massa_corporal2 x y | (x, y) <- argumentos]) >>
    -- print ([massa_corporal3 x y | (x, y) <- argumentos]) >>
    print (iniciais "Teste" "User")
