module Aux (Natural(..), suma_natural, multi_natural) where

data Natural = Cero | S Natural deriving (Eq, Show)

{- Función: suma_natural
   Descripción: Calcula la suma de dos naturales
   Uso: suma_natural (S(S(Cero))) (S(Cero)) = (S(S(S(Cero))))
-}
suma_natural :: Natural -> Natural -> Natural
suma_natural Cero n = n
suma_natural (S m) n = suma_natural m (S n)


{- Función: multi_natural
   Descripción: Calcula la multiplicación de dos naturales
   Uso: multi_natural (S(S(S Cero))) (S(S Cero)) = S (S (S (S (S (S Cero)))))
-}
multi_natural :: Natural -> Natural -> Natural
multi_natural Cero n = Cero
multi_natural (S m) n = suma_natural n (multi_natural m n)
