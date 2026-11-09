module Main where
 
data Cafe = Cafe String Double Int
 
descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ " - R$ " ++ show preco
 
forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise        = "Suave"
 
precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido leite (Cafe _ preco _) =
  if leite then preco + 2.0 else preco
 
main :: IO ()
main = do
  let curry = Cafe "Café Curry do Leblanc" 12.5 9
      blend = Cafe "Blend da Casa" 9.0 6
      suave = Cafe "Café Suave de Yongen-Jaya" 8.0 3
 
  putStrLn (descrever curry ++ " | " ++ forca curry)
  putStrLn (descrever blend ++ " | " ++ forca blend)
  putStrLn (descrever suave ++ " | " ++ forca suave)
 
  print (precoDoPedido True blend)
  print (precoDoPedido False blend)