module Aux where

data Arbol a = Vacio | AB a (Arbol a) (Arbol a) deriving (Eq, Ord, Show)

{-
Función: inOrden
Descripción: Recibe un arbol y devuelve una lista con los nodos en InOrden
Uso: inOrden (AB 4 (AB 2 (AB 1 Vacio Vacio) (AB 3 Vacio Vacio)) (AB 6 (AB 5 Vacio Vacio) (AB 7 Vacio Vacio))) = [1,2,3,4,5,6,7]
-}
inOrden :: Arbol a -> [a]
inOrden Vacio = []
inOrden (AB r t1 t2) = (inOrden t1) ++ [r] ++ (inOrden t2)

{-
Función: preOrden
Descripción: Recibe un arbol y devuelve una lista con los nodos en PreOrden
Uso: preOrden (AB 4 (AB 2 (AB 1 Vacio Vacio) (AB 3 Vacio Vacio)) (AB 6 (AB 5 Vacio Vacio) (AB 7 Vacio Vacio))) = [4,2,1,3,6,5,7]
-}
preOrden :: Arbol a -> [a]
preOrden Vacio = []
preOrden (AB r t1 t2) = [r] ++ (preOrden t1) ++ (preOrden t2)

{-
Función: posOrden
Descripción: Recibe un arbol y devuelve una lista con los nodos en PosOrden
Uso: posOrden (AB 4 (AB 2 (AB 1 Vacio Vacio) (AB 3 Vacio Vacio)) (AB 6 (AB 5 Vacio Vacio) (AB 7 Vacio Vacio))) = [1,3,2,5,7,6,4]
-}
posOrden :: Arbol a -> [a]
posOrden Vacio = []
posOrden (AB r t1 t2) = (posOrden t1) ++ (posOrden t2) ++ [r]

{-
Función: altura
Descripción: Devuelve la altura de un arbol
Uso: altura (AB 4 (AB 2 (AB 1 Vacio Vacio) (AB 3 Vacio Vacio)) (AB 6 (AB 5 Vacio Vacio) (AB 7 Vacio Vacio))) = 3
-}
altura :: Arbol a -> Int
altura Vacio = 0
altura (AB r Vacio Vacio) = 1
altura (AB r t1 t2) = 1 + max (altura(t1)) (altura(t2))

{-
Función: inserta
Descripción: inserta un elemento a un árbol
Uso: inserta 0 Vacio = AB 0 Vacio Vacio
-}
inserta :: (Ord a) => a -> Arbol a -> Arbol a
inserta n Vacio = (AB n Vacio Vacio)
inserta n (AB r t1 t2)
  | n == r = AB r t1 t2
  | n < r = AB r (inserta n t1) t2
  | n > r = AB r t1 (inserta n t2)

{-
Función: insertaLista
Descripción: inserta los elementos de una lista en un arbol
Uso:  insertaLista [6,2,8,3,9] (AB 7 Vacio Vacio) = AB 7 (AB 6 (AB 2 Vacio (AB 3 Vacio Vacio)) Vacio) (AB 8 Vacio (AB 9 Vacio Vacio))
-}
insertaLista :: (Ord a) => [a] -> Arbol a -> Arbol a
insertaLista [] t = t
insertaLista (x:xs) Vacio = insertaLista xs (inserta x Vacio)
insertaLista (x:xs) (AB r t1 t2) = insertaLista xs (inserta x (AB r t1 t2))

{-
Función: quicksort
Descripción: Ordena los elementos de forma ascendente o lexicografica
Uso: quicksort [16,3,1,9,8] = [1,3,8,9,16]
Uso: quicksort [i,r,v,i,n] = [i,i,n,r,v]
-}
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort (filter (<= x) xs) ++ [x] ++ quicksort (filter (> x) xs)

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
Función: medianaLista
Descripción: Devuelve el elemento que se encuenta a la mitad de la lista
Uso: medianaLista [3,6,1,5,7,2,9] = 5
-}
medianaLista :: [a] -> a
medianaLista [] = error "No hay elemento"
medianaLista xs = recuperaElemento xs (((length xs)-1) `div` 2)
