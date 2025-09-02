{- Función: sayHello
   Descripción: Devuelve un mensaje de texto que envia un saludo.
   Uso: sayHello "Juan" = Hello, "Juan"!
-}
sayHello :: String -> IO()
sayHello x = putStrLn ("Hello, " ++ show x ++ "!")


{- Función: calcularPropina
   Descripción: Devuelve el 10% de un número.
   Uso: calcularPropina 1500 = 150.0
-}
calcularPropina :: Double -> Double
calcularPropina x = x*0.10


{- Función: menor
   Descripción: Devuelve el número menor de tres números dados por el usuario.
   Uso: menor (10, 12, 11) = 10
-}
menor :: (Int, Int, Int) -> Int
menor (x, y, z) =
  if x < y && x < z
  then x
  else if y < z
       then y
       else z

            
{- Función: decide
   Descripción: Devuelve una cadena de texto de dos cadenas dadas por el usuario dependiendo del valor de un booleano.
   Uso: decide True "Juan" "Pedro" = "Juan"
        decide False "Juan" "Pedro" = "Pedro"
-}
decide :: Bool -> String -> String -> String
decide x y z =
  if x == True
  then y
  else z


{- Función: esDescendiente
   Descripción: Devuelve un valor booleano, True si cuatro números dados por el usuario fueron ingresados de forma descendente y False si no.
   Uso: calcularPropina 1500 = 150.0
-}
esDescendiente :: Int -> Int -> Int -> Int -> Bool
esDescendiente x y z w =
  if x > y && y > z && z > w
  then True
  else False


{- Función: esDivisible
   Descripción: Verifica si un número es divisible por otro, si el segundo número es cero no es posible dividir.
   Uso: esDivisible 10 5 = 10 es divisible por 5
        esDivisible 2 0 = 2 no se puede dividir por 0
-}
esDivisible :: Int -> Int -> IO()
esDivisible x y =
  if y /= 0
  then putStrLn (show x ++ " es divisible por " ++ show y)
  else putStrLn (show x ++ " no se puede dividir por " ++ show y)


{- Función: hipotenusa
   Descripción: Devuelve el valor de la hipotenusa con dos números dados por el usuario.
   Uso: hipotenusa 3 4 = 5.0
-}
hipotenusa :: Double -> Double -> Double
hipotenusa b h = sqrt((b*b)+(h*h))


{- Función: pendiente
   Descripción: Devuelve el valor de la pendiente con los valores de dos puntos.
   Uso: pendiente (5.0, 4.0) (3.0, 2.0) = 1.0
-}
pendiente :: (Double, Double) -> (Double, Double) -> Double
pendiente (x1, y1) (x2, y2) = (y2 - y1) / (x2 - x1)


{- Función: distanciaPuntos
   Descripción: Devuelve el valor de la distancia entre dos puntos dados por el usuario.
   Uso: distanciaPuntos (2.0, 1.0) (2.0, 2.0) = 1.0
-}
distanciaPuntos :: (Double, Double) -> (Double, Double) -> Double
distanciaPuntos (x1, y1) (x2, y2) = sqrt(((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1)))


{- Función: cuadrados
   Descripción: Devuelve el cuadrado de un conjunto de numeros dados por el usuario.
   Uso: cuadrados [1, 2, 3, 4, 5] = [1, 4, 9, 16, 25]
        cuadrados [1..5] = [1, 4, 9, 16, 25]
-}
cuadrados :: [Int] -> [Int]
cuadrados (a:b) = [x^2 | x <- (a:b)]
