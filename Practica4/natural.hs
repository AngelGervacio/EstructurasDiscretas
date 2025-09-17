import Aux

{- Función: a_natural
   Descripción: Devuelve el valor de tipo de dato Natural de un número entero.
   Uso: a_natural 3 = S (S (S Cero))
-}
a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural x = suma_natural (S Cero) (a_natural(x-1))


{- Función: a_entero
   Descripción: Devuelve el valor en número entero de un tipo de dato Natural.
   Uso: a_entero (S(S(S(S Cero)))) = 4
-}
a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S m) = 1 + a_entero(m)


{- Función: potenciaNat
   Descripción: Devuelve el resultado de elevar un número natural a la potencia de un segundo número natural.
   Uso: potenciaNat (S(S Cero)) (S(S(S Cero))) = S (S (S (S (S (S (S (S Cero)))))))
-}
potenciaNat :: Natural -> Natural -> Natural
potenciaNat m Cero = (S Cero)
potenciaNat m (S n) = multi_natural m (potenciaNat m n)


{- Función: facNat
   Descripción: Devuelve el factorial de un número natural.
   Uso: facNat (S(S(S Cero))) = S (S (S (S (S (S Cero)))))
-}
facNat :: Natural -> Natural
facNat (S Cero) = (S Cero)
facNat (S n) = multi_natural (S n) (facNat n)
