module Main where
 
data Esboco = Esboco
  { titulo  :: String
  , tecnica :: String
  , horas   :: Int
  }
 
esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente []    = "O caderno esta vazio."
esbocoMaisRecente (e:_) = titulo e ++ " (" ++ tecnica e ++ ")"
 
contarEsbocos :: [Esboco] -> Int
contarEsbocos []        = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto
 
horasDesenhando :: [Esboco] -> Int
horasDesenhando []        = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto
 
main :: IO ()
main = do
  let caderno =
        [ Esboco "Ruinas sob a nevoa" "grafite" 5
        , Esboco "Criatura do pantano" "nanquim" 8
        , Esboco "Floresta morta" "carvao" 3
        ]
      cadernoNovo = Esboco "Torre abandonada" "nanquim" 6 : caderno
 
  putStrLn ("Mais recente: " ++ esbocoMaisRecente caderno)
  putStrLn ("Esbocos: " ++ show (contarEsbocos caderno))
  putStrLn ("Horas: " ++ show (horasDesenhando caderno))
  putStrLn ("Caderno vazio: " ++ esbocoMaisRecente [])
 
  putStrLn ("Novo, mais recente: " ++ esbocoMaisRecente cadernoNovo)
  putStrLn ("Novo, esbocos: " ++ show (contarEsbocos cadernoNovo))
  putStrLn ("Anterior, mais recente: " ++ esbocoMaisRecente caderno)
  putStrLn ("Anterior, esbocos: " ++ show (contarEsbocos caderno))
 
  -- putStrLn (titulo (head []))