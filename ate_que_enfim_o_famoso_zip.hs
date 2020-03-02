-- zip é mágico.
main =
    print "zip [1,2,3,4,5] [5,5,5,5,5]" >>
    print (zip [1,2,3,4,5] [5,5,5,5,5]) >>
    -- mesma coisa que o enumerate do python abaixo.
    print "zip [1..] [\"maça\", \"laranja\", \"morango\"]" >>
    print (zip [1..] ["maça", "laranja", "morango"])
