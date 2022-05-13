data ArvoreBin a = Folha | No (ArvoreBin a) a (ArvoreBin a)

arv :: ArvoreBin [Int]
arv =
  No
    ( No
        ( No
            (No Folha [21,22] Folha)
            [11,12]
            (No Folha [23] Folha)
        )
        [4,5,6]
        ( No Folha [13,14] Folha
        )
    )
    [1,2,3]
    ( No
        ( No Folha [15,16,17] Folha
        )
        [7,8,9,10]
        ( No
            (No Folha [24] Folha)
            [18,19,20]
            (No Folha [25,26] Folha)
        )
    )
