module Practica6 (Arbol(..), TipoRecorrido(..), nVacios, refleja, minimo, recorrido, esBalanceado, listaArbol)where

import Aux

data TipoRecorrido = InOrden | PreOrden | PosOrden deriving (Show)

{-
Función: nVacios
Descripción: Regresa la cantidad de nodos Vacios que hay en un arbol
Uso: nVacios (AB 4 (AB 2 (AB 1 Vacio Vacio) (AB 3 Vacio Vacio)) (AB 6 (AB 5 Vacio Vacio) (AB 7 Vacio Vacio))) = 8
-}
nVacios :: Arbol a -> Int
nVacios Vacio = 1
nVacios (AB r t1 t2) = nVacios t1 + nVacios t2

{-
Función: refleja 
Descripción: Convierte los subarboles izquierdos a subarboles derechos y viceversa
Uso: refleja (AB 4 (AB 2 (AB 1 Vacio Vacio) Vacio) (AB 6 (AB 5 Vacio Vacio) Vacio)) = AB 4 (AB 6 Vacio (AB 5 Vacio Vacio)) (AB 2 Vacio (AB 1 Vacio Vacio))
-}
refleja :: Arbol a -> Arbol a
refleja Vacio = Vacio
refleja (AB r t1 t2) = (AB r (refleja t2) (refleja t1))

{-
Función: minimo
Descripción: Devuelve el elemento minimo de un arbol
Uso: minimo (AB 4 (AB 2 (AB 1 Vacio Vacio) (AB 3 Vacio Vacio)) (AB 6 (AB 5 Vacio Vacio) (AB 7 Vacio Vacio))) = 1
-}
minimo :: (Ord a) => Arbol a -> a
minimo Vacio = error "No existe un minimo"
minimo (AB r Vacio Vacio) = r
minimo (AB r Vacio t2) = min r (minimo t2)
minimo (AB r t1 Vacio) = min r (minimo t1)
minimo (AB r t1 t2) = min r (min (minimo t1) (minimo t2))

{-
Función: recorrido
Descripción: Devuelve una lista con los elementos de un arbol en PreOrden, InOrden o PosOrden
Uso: recorrido (AB 4 (AB 2 (AB 1 Vacio Vacio) (AB 3 Vacio Vacio)) (AB 6 (AB 5 Vacio Vacio) (AB 7 Vacio Vacio))) InOrden = [1,2,3,4,5,6,7]
Uso: recorrido (AB 4 (AB 2 (AB 1 Vacio Vacio) (AB 3 Vacio Vacio)) (AB 6 (AB 5 Vacio Vacio) (AB 7 Vacio Vacio))) PreOrden = [4,2,1,3,6,5,7]
Uso: recorrido (AB 4 (AB 2 (AB 1 Vacio Vacio) (AB 3 Vacio Vacio)) (AB 6 (AB 5 Vacio Vacio) (AB 7 Vacio Vacio))) PosOrden = [1,3,2,5,7,6,4]
-}
recorrido :: Arbol a -> TipoRecorrido -> [a]
recorrido x InOrden = inOrden x
recorrido x PreOrden = preOrden x
recorrido x PosOrden = posOrden x

{-
Función: esBalanceado
Descripción: Devuelve True si el arbol esta balanceado, en otro caso False
Uso: esBalanceado (AB 4 (AB 2 (AB 1 Vacio Vacio) (AB 3 Vacio Vacio)) (AB 6 (AB 5 Vacio Vacio) (AB 7 Vacio Vacio))) = True
Uso: esBalanceado  (AB 4 (AB 2 (AB 1 Vacio Vacio) (AB 3 Vacio Vacio)) Vacio) = False
-}
esBalanceado :: Arbol a -> Bool
esBalanceado Vacio = True
esBalanceado (AB r t1 t2) =
  if((altura t1) <= ((altura t2)+1) && (altura t1) >= ((altura t2)-1))
  then True
  else False

{-
Función: listaArbol
Descripción: Convierte un lista en un arbol binario balanceado
Uso: listaArbol [2,7,3,9] = AB 3 (AB 2 Vacio Vacio) (AB 7 Vacio (AB 9 Vacio Vacio))
-}
listaArbol :: (Ord a, Num a, Integral a) => [a] -> Arbol a
listaArbol [] = Vacio
listaArbol [x] = (AB x Vacio Vacio)
listaArbol xs = insertaLista (filter(<medianaLista(quicksort xs)) (reverse(quicksort xs))) (insertaLista (filter(>=medianaLista(quicksort xs)) (quicksort xs)) Vacio)
