# Información de la Práctica 4

## Objetivo de la práctica

El objetivo de esta práctica es que el estudiante implemente sus propios tipos de dato y que las use en las funciones dentro de *Haskell*, ademas de importar módulos con funciones auxiliares que le ayudaran en la implementación de las funciones principales.

Con esta práctica, el estudiante demostrara sus conocimientos en la implementación de tipos de datos, así como crear e importar módulos, estos conocimientos los adquirió mediante las clases de laboratorio.

## Recursión First Steps (Practica 3)

La recursión nos permite repetir varios procesos hasta llegar a un resultado, y se compone de un caso base y un caso recursivo, en el caso de la canción **El Pollito Pio**, la recursión se encuentra presente, pues sigue algunos procesos repetitivos.

En este caso los elementos que manejaremos serán los animales y el *tractor*, los cuales son mencionados durante la canción y emiten su sonido correspondiente, ademas siguen un orden, con esta información podemos determinar dos casos base, teniendo como nuestro elemento minimal a el *pollito*:

* Cuando el *pollito* es el elemento que se mencionara

* Cuando el *tractor* es el elemento que se mencionara

En el primer caso base simplemente se menciona a el *pollito* y se emite su sonido algunas veces, el segundo caso base se menciona a el *tractor*, se emite su sonido y aplasta a el pollito.

Por otro lado, no solo tenemos a el *pollito* ni a el *tractor* como elementos de la canción también tenemos otros animales que no son nuestro elemento minimal, en este caso, aplicaremos nuestro caso recursivo.

El caso recursivo mencionara el nombre del animal, seguido del su sonido, para después mencionar el animal anterior y su sonido, hasta llegar a el *pollito* (caso base)

Por ejemplo, en nuestro conjunto de elementos de la canción tenemos a:

Pollito - Gallina - Gallo - Pavo - Paloma - Gato - Perro - Cabra - Cordero - Vaca - Toro - Tractor

Entonces, si comenzamos desde la *pavo*, nos damos cuenta que no es ninguno de nuestros casos base, entonces recurrimos a el caso recursivo, en el cual se menciona a la *paloma*, seguido por su sonido, después mencionado a el animal anterior, en este caso es el *gallo*, el cual tampoco es ninguno de nuestros caso base, por lo que volvemos al caso recursivo, se menciona a el *gallo*, seguido por su sonido, para después mencionar al animal anterior, que es la *gallina*, tampoco es un caso base, entonces se menciona a la *gallina*, con su sonido, y mencionando después a el animal anterior, que es el *pollito*, que finalmente es uno de nuestros casos base, el cual nos dice que solo menciona a el *pollito* y su sonido, terminando esa parte de la canción.

Y este caso recursivo sigue ese orden para todos los animales que no son ninguno de los casos base.

* ¿Que pasaría si no tuviéramos  el caso base del *tractor*?

En ese caso el *tractor* llegaría a el caso recursivo, hasta llegar a el *pollito*, sin embargo eso no es lo que pasa en la canción, en la cual, cuando se llega a el *tracto* este aplasta a el *pollito* y termina la canción, es por esto mismo que lo determinamos como un caso base.

De esta manera se aplica la recursión en la canción.

## Actividades: Funciones Auxiliares

Para poder implementar las funciones auxiliares tenemos que tener en cuenta que podemos representar un número natural como *Cero* y como *(S m)* basándonos en la definición recursiva de los naturales y que implementamos en el archivo *Aux*.

```
data Natural = Cero | S Natural deriving (Eq, Show)
```

### 1. suma_natural

La función calcula la suma de dos números naturales, recibe dos números naturales y devuelve un número natural, y tiene un caso base y un caso recursivo.

```
suma_natural :: Natural -> Natural -> Natural
```

En el caso base, si el primer número es *Cero* y el segundo es un número natural cualquiera, la función devuelve como resultado el segundo número natural.

```
suma_natural Cero n = Cero
```

En el caso recursivo, recibimos *(S m)* y *n*, y devuelve como resultado la misma función *suma_natural* con los parámetros *m* y *(S n)*, es decir le quita un elemento a *(S m)* y le agrega un elemento a *n*.

```
suma_natural (S m) n = suma_natural m (S n)
```

### 2. multi_natural

La función calcula la multiplicación de dos números naturales, recibe dos números naturales y devuelve un número natural, y tiene un caso base y un caso recursivo.

```
multi_natural :: Natural -> Natural -> Natural
```

En el caso base, si el primer número es *Cero* y el segundo es un número natural cualquiera, la función devuelve como resultado *Cero*.

```
multi_natural Cero n = Cero
```

En el caso recursivo, recibimos *(S m)* y *n* y devuelve como resultado la función *suma_natural* que tiene como parámetros *n* y la misma función *multi_natural* con parámetros *m* y *n*.

```
multi_natural (S m) n = suma_natural n (multi_natural m n)
```

## Tiempo requerido

Un aproximado de 2 horas dedicadas a la implementación de las funciones, investigación y corrección de errores.
