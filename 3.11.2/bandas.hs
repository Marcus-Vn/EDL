import Data.List

bandas :: [[String]]
bandas = [["Gilberto Gil"],
          ["Victor","Leo"],
          ["Gonzagao"],
          ["Claudinho","Bochecha"]]
            
            
type Musica = (String,Int,Int)
musicas :: [Musica]
musicas = [("Aquele Abraco", 0, 100),
          ("Esperando na Janela", 0, 150),
          ("Borboletas", 1, 120),
          ("Asa Branca", 2, 120),
          ("Assum Preto", 2, 140),
          ("Vem Morena", 2, 200),
          ("Nosso Sonho", 3, 150),
          ("Quero te Encontrar", 3, 100)]
          
compBandas :: [String]
compBandas = map (\x -> intercalate ", " x) bandas

idxMusica :: Musica -> String
idxMusica (x,_,_) = x

idxAutor :: Musica -> Int
idxAutor (_,y,_) = y

idxDur :: Musica -> Int
idxDur (_,_,z) = z

ordem :: Musica -> String
ordem mus = compBandas !! (idxAutor mus)

autores :: [String]
autores = map ordem musicas

dur :: [Int]
dur = map idxDur musicas

duracao :: [String]
duracao = map show dur

pretty_print :: [Musica] -> [String] -> [String] -> IO ()
pretty_print [] [] [] = return ()
pretty_print (l:ls) (l1:l1s) (l2:l2s) = do putStrLn $ "Nome: "++(idxMusica(l))
                                           putStrLn $ "Autor(es): "++(l1)
                                           putStrLn $ "Duracao: "++(l2)++"\n"
                                           pretty_print ls l1s l2s
                         

main = pretty_print musicas autores duracao
