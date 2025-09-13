{- Función: creditos
   Descripción: Devuelve una lista de materias que tiene una cantidad de creditos dada por el usuario.
   Uso: creaditos 10 = ["Algebra Superior I, Estructuras Discretas"]
-}
creditos :: Int -> [String]
creditos x =
  if (x == 10)
  then ["Algebra Superior I, Estructuras Discretas"]
  else if (x == 12)
       then ["Matematicas para las Ciencias Aplicadas I, Introduccion a las Ciencias de la Computacion"]
       else if (x == 4)
            then ["Ingles I"]
            else ["No hay materias con esos creditos"]

{- Función: negativos
   Descripción: Devuelve la cantidad de números negativos de una lista
   Uso: negativos [1, -2, 3, 4, -1, -4] = 3
-}
negativos :: [Int] -> Int
negativos (x:y) = length [x | x <- (x:y), x < 0]

{- Función: primos
   Descripción: Devuelve una lista con los números primos de una lista.
   Uso: primos [1..20] = [2,3,5,7,11,13,17,19]
-}
primos :: [Int] -> [Int]
primos (x:y) = [x | x <- (x:y), [c | c <- [1..x], x `mod` c == 0] == [1,x]]

{- Función: conjuntoLista
   Descripción: Devuelve una lista sin elementos repetidos, a partir de una lista dada por el usuario.
Uso: conjuntoLista [1, 2, 2, 1, 3] = [1,2,3]
-}
conjuntoLista :: (Eq a) => [a] -> [a]
conjuntoLista [] = []
conjuntoLista (x:y) = [x] ++ conjuntoLista [r | r <- y, r /= x]
