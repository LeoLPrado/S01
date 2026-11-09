module Main where

data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor   :: Double
  , etapa   :: Etapa
  }

descrever :: Atendimento -> String
descrever a =
  cliente a ++ " - " ++ servico a ++ " - " ++ show (etapa a)

concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado atendimentos =
  sum (map valor (filter (\a -> etapa a == Concluido) atendimentos))

main :: IO ()
main = do
  let a1 = Atendimento "Sem-Rosto" "Banho de ervas" 50.0 NaFila
      a2 = Atendimento "Deus do Rio" "Banho de lama" 120.0 NoBanho
      a3 = Atendimento "Deus Rabanete" "Banho termal" 80.0 NaFila

      original = [a1, a2, a3]
      nova     = [concluir a1, concluir a2, a3]

  putStrLn "Lista original:"
  mapM_ (putStrLn . descrever) original
  putStrLn "Arrecadado na original:"
  print (arrecadado original)

  putStrLn "Lista nova:"
  mapM_ (putStrLn . descrever) nova
  putStrLn "Arrecadado na nova:"
  print (arrecadado nova)