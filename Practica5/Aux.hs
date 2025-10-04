module Aux where

{-
Función: representacion
Descripción: Devuelve una lista una cantidad de elementos igual a un número entero positivo recibido
Uso: representacion 5 = [1,1,1,1,1]
-}
representacion :: Int -> [Int]
representacion n = replicate n 1

{-
Función: sucesor
Descripción: Devuelve el sucesor de número entero positivo.
Uso: sucesor 3 = 4
-}
sucesor :: Int -> Int
sucesor n = length(1:(representacion n))

{-
Función: predecesor
Descripción: Devuelve el predecesor de un número entero positivo.
Uso: predecesor 7 = 6
-}
predecesor :: Int -> Int
predecesor 0 = 0
predecesor n = length(tail(representacion n))

{-
Función: igual
Descripción: Dado dos números enteros positivos, devuelve True si los dos son iguales y False en otro caso.
Uso: igual 6 6 = True
Uso: igual 3 5 = False
-}
igual :: Int -> Int -> Bool
igual 0 0 = True
igual 0 n = False
igual m 0 = False
igual m n = igual (predecesor m) (predecesor n)

{-
Función: menorQue
Descripción: Dado dos números enteros positivos, devuelve True si el primer numero es menor que el segundo y False en otro caso.
Uso: menorQue 2 8 = True
Uso: menorQue 7 4 = False
-}
menorQue :: Int -> Int -> Bool
menorQue 0 0 = False
menorQue 0 n = True
menorQue m 0 = False
menorQue m n = menorQue (predecesor m) (predecesor n)

{-
Función: sumar
Descripción: Devuelve el resultado de sumar dos números enteros positivos.
Uso: sumar 4 8 = 12
-}
sumar :: Int -> Int -> Int
sumar 0 n = n
sumar m n = sumar (predecesor m) (sucesor n)

{-
Función: multiplicar
Descripción: Devuelve el resultado de multiplicar dos números enteros positivos.
Uso: multiplicar 3 9 = 27
-}
multiplicar :: Int -> Int -> Int
multiplicar 0 n = 0
multiplicar m n = sumar n (multiplicar (predecesor m) n)

{-
Función: esPar
Descripción: Devuelve True si el número es par y False en otro caso.
Uso: esPar 6 = True
Uso: esPar 5 = False
-}
esPar :: Int -> Bool
esPar 0 = True
esPar 1 = False
esPar n = esPar (predecesor(predecesor n))

{-
Función: dividir
Descripción: Devuelve el cociente de la division de dos enteros positivos, haciendo uso de la funcion obtenerCociente.
Uso: dividir 6 2 = 3
-}
dividir :: Int -> Int -> Int
dividir m 0 = error "No se puede dividir entre 0"
dividir 0 n = 0
dividir m n = obtenerCociente m n 1

{-
Función: obtenerCociente
Descripción: Devuelve el cociente de la division de dos enteros positivos y otra variable utilizada como contador.
Uso: obtenerCociente 6 2 1 = 3
-}
obtenerCociente :: Int -> Int -> Int -> Int
obtenerCociente m n o =
  if(menorQue m (multiplicar n o))
  then error "El cociente no es un numero entero"
  else if(igual (multiplicar n o) m)
       then o
       else obtenerCociente m n (sucesor o) 
