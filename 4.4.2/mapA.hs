data Arvore a = Folha | No (Arvore a) a (Arvore a)
     deriving (Show)

arv :: Arvore Int
arv =
  No
    ( No
        ( No
            (No Folha 2 Folha)
            3
            (No Folha 4 Folha)
        )
        8
        ( No Folha 25 Folha)
    )
    1
    ( No
        ( No Folha 12 Folha)
        9
        ( No
            (No Folha 7 Folha)
            5
            (No Folha 6 Folha)
        )
    )

mapA :: (a -> b) -> Arvore a -> Arvore b
mapA f Folha = Folha
mapA f (No e a d) = No (mapA f e) (f a) (mapA f d)

showTree :: Show a => Arvore a -> Int -> String
showTree (Folha) _ = []
showTree (No t l r) n = replicate n '*' ++ show l ++ "\n" ++ showTree t (n+1) ++ showTree r (n+1)

arv1 = mapA (\x -> x*2) arv


main = do putStrLn $ showTree arv 0
          putStrLn $ showTree arv1 0
