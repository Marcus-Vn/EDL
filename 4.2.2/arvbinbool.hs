data ArvoreBin a = Folha | No (ArvoreBin a) a (ArvoreBin a)

arv :: ArvoreBin Bool
arv =
  No
    ( No
        ( No
            (No Folha True Folha)
            False
            Folha
        )
        False
        ( No
            (No Folha True Folha)
            False
            (No Folha True Folha)
        )
    )
    True
    ( No
        (No Folha False Folha)
        True
        (No Folha True Folha)
    )
