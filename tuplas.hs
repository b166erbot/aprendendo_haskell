listasDeTuplas = [(2,2), (1,2), (3,4)]
-- isto causa um erro: [(2,2), (1,3,2), (3,4)]
-- pois tuplas precisam ser homogênias e ter o mesmo tamanho
-- isto também causa um erro: [(2,2), ('a',2), (3,4)]
-- pois os tipos precisam estar nas mesmas posições para todas as tuplas.
main = print (listasDeTuplas)
