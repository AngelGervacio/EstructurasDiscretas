module Practica5 where

import Aux
import Data.Char

{-
Función: hollerBack
Descripción: Devuelve una cadena en mayusculas
Uso: hollerBack estructuras = ESTRUCTURAS
-}
hollerBack :: String -> String
hollerBack "" = ""
hollerBack x = [toUpper (head x)] ++ hollerBack (tail x)

{-
Función: palidromo
Descripción: Devuelve True si una palabra es un palidromo y False en otro caso
Uso: palindromo reconocer = True
Uso: palindromo comer = False
-}
palindromo ::(Eq a) => [a] -> Bool
palindromo [] = True
palindromo (x:xs) =
  if(length (x:xs) == 1)
  then True
  else if(x == last xs)
       then palindromo (init xs)
       else False

{-
Función: replica
Descripción: Devuelve una lista con n apariciones de x
Uso: replica 3 8 = [3,3,3,3,3,3,3,3]
-}
replica :: Int -> Int -> [Int]
replica x 0 = []
replica x n = [x] ++ replica x (n-1)

{-
Función: recuperaElemento
Descripción: Devuelve el elemento de una lista que esta en el indice indicado,
Uso: recuperaElemento [2,4,6,8,10] 2 = 6
-}
recuperaElemento :: [a] -> Int -> a
recuperaElemento (x:xs) 0 = x
recuperaElemento (x:xs) n =
  if(n < 0 || n >= length (x:xs))
  then error "Indice fuera de rango"
  else recuperaElemento xs (n-1)

{-
Función: rota
Descripción: Traslada el primero elemento de una lista hasta el final, repitiendo esto n veces
Uso: rota [1,2,3,4,5] 3 = [4,5,1,2,3] 
-}
rota :: [a] -> Int -> [a]
rota [] n = []
rota (x:xs) 0 = (x:xs)
rota (x:xs) n =
  if(n < 0)
  then rota (last xs:init (x:xs)) (n+1)
  else rota (xs ++ [x]) (n-1)

{-
Función: extranio
Descripción: Dado un entero positivo, si es par, lo divide entre dos, si es par lo multiplica
             por tres y agrega uno, repite esto hasta llegar a uno y devuelve una lista con
             todos los elementos que pasaron por el algoritmo.
Uso: extranio 7 = [7,22,11,34,17,52,26,13,40,20,10,5,16,8,4,2,1]
-}
extranio :: Int -> [Int]
extranio 1 = [1]
extranio x =
  if(esPar x)
  then x:extranio(dividir x 2)
  else x:extranio(sumar (multiplicar x 3) 1)
