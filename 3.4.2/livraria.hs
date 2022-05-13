type Livro = (String, String, Int, Float)
livraria :: [Livro]
livraria = [("Codigo Limpo", "Robert C. Martin", 2008, 67.39),
            ("Hamlet", "William Shakespeare", 1603, 24.90),
            ("Vidas Secas", "Graciliano Ramos", 1938, 33.50),
            ("Dom Casmurro", "Machado de Assis", 1899, 9.66),
            ("Compiladores: Principios, Tecnicas e Ferramentas", "Alfred Aho, Ravi Sethi, Jeffrey Ullman, Monica S. Lam", 1986, 209.30),
            ("O Pequeno Principe", "Antoine de Saint-Exupery", 1943, 11.60),
            ("Criatividade S.A.", "Edwin Catmull, Amy Wallace", 2014, 30.88),
            ("Sistemas Operacionais Modernos", "Andrew S. Tanenbaum", 1995, 225.33),
            ("Programming in Haskell","Graham Hutton",2007,311.82)]
            
--MAP            
--Supondo que alguém está procurando o nome do livro na barra de pesquisa, essa pessoa vai procurar apenas o nome do livro ou do autor, vou usar a 
--map para gerar uma lista com (nome) e (autor) 

pesquisa :: [String]
pesquisa = map (\(x,y,_,_)-> x++" escrito por "++y) livraria

--FILTER
--Alguém está procurando por livros mais baratos (menos de 50 reais), e usa um filtro de preço. Vou usar filter para exibir apenas os livros com esse requisito

barato :: [Livro]
barato = filter (\(_,_,_,w)-> w < 50.0 ) livraria

--FOLD
-- Alguém quer comprar todos os livros disponíveis, vou usar o fold para somar o total que será gasto.

compra :: Float
compra = foldr (+) 0 (map (\(_,_,_,w) -> w) livraria)

main = do print pesquisa
          print barato
          putStrLn $ "R$: "++ show(compra)
