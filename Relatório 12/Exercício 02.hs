module Main where
 
pesoMaximo :: Double
pesoMaximo = 10.0
-- pesoMaximo = 15.0
 
data Encomenda = Encomenda
  { destinatario :: String
  , peso         :: Double
  , frete        :: Double
  }
 
descrever :: Encomenda -> String
descrever e =
  destinatario e ++ " - " ++ show (peso e) ++ " kg - frete R$ " ++ show (frete e)
 
cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura = filter (\e -> peso e <= pesoMaximo)
 
totalDeFretes :: [Encomenda] -> Double
totalDeFretes es = sum (map frete es)
 
main :: IO ()
main = do
  let encomendas =
        [ Encomenda "Osono (padaria)" 3.5 8.0
        , Encomenda "Tombo" 12.0 20.0
        , Encomenda "Ursula" 5.0 10.0
        , Encomenda "Sra. da torta de peixe" 15.5 25.0
        , Encomenda "Dona Kokiri" 9.0 12.5
        ]
      leves = cabemNaVassoura encomendas
 
  putStrLn "Todas as encomendas:"
  mapM_ (putStrLn . descrever) encomendas
 
  putStrLn "Cabem na vassoura:"
  mapM_ (putStrLn . descrever) leves
 
  putStrLn "Total de fretes:"
  print (totalDeFretes leves)