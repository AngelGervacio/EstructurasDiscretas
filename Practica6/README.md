# Información de la Práctica 3

## Objetivo de la Práctica

El objetivo de la práctica es aplicar los conocimientos del estudiante sobre arboles, de manera que implemente funciones en *Haskell* haciendo uso de ellos, de manera que recalque sus conocimientos en la creación de sus propios tipos de datos, y otras características de *Haskell*.

También demostrando los conocimientos adquiridos principalmente en sus clases de teoría y de laboratorio.

## Tiempo requerido

Un aproximado de 4 horas, enfocadas en la implementación de las actividades, resolución de errores y la investigación de información para realizar las actividades de la práctica.

## Actividad Sintaxis

### 1.

Representaciones graficas de dos árboles binarios

```mermaid
   graph TB
   A((1))-->B((2))
   A-->C((3))
   B-->D((4))
   B-->E((5))
   C-->F((6))
```

```mermaid
   graph TB
   A((1))-->B((2))
   A-->C((3))
   B-->D((4))
   B-->E((5))
   C-->F((6))
   D-->G((7))
   E-->H((8))
   E-->I((9))
   F-->J((10))
   F-->K((11))
```

### 2.

a) AB 4 (Vacio ) (AB 3 Vacio Vacio )

```mermaid
   graph TB
   A((4))-->B((3))
```

b) AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))

```mermaid
   graph TB
   A((4))-->B((3))
   B-->C((5))
```

c) AB 3 (AB 7 (AB 12 Vacio Vacio) Vacio) (AB 6 (AB 11 Vacio Vacio) (AB 10 Vacio Vacio))

```mermaid
   graph TB
   A((3))-->B((7))
   A-->C((6))
   B-->D((12))
   C-->E((11))
   C-->F((10))
```
