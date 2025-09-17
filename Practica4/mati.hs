data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

{- Función: mayorIgual
   Descripción: Devuelve el valor booleano True si la primera Matrioska es mayor o igual que la segunda Matrioska, y el valor booleano False si la primera Matrioska es menor que la segunda Matrioska.
   Uso: mayorIgual (Cont(Cont(Cont Mati))) (Cont Mati) = True
        mayorIgual (Cont(Cont Mati)) (Cont(Cont Mati)) = True
        mayorIgual Mati (Cont(Cont(Cont Mati))) = False
-}
mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual Mati Mati = True
mayorIgual Mati (Cont n) = False
mayorIgual (Cont m) Mati = True
mayorIgual (Cont m) (Cont n) = mayorIgual m n


{- Función: aplana
   Descripción: Devuelve una lista con todas las Matrioskas que componen una Matrioska anidada.
   Uso: aplana (Cont(Cont(Cont Mati))) = [Cont (Cont (Cont Mati)),Cont (Cont Mati),Cont Mati,Mati]
-}
aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana (Cont m) = [Cont m] ++ aplana m
