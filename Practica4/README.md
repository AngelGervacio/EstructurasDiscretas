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

## Actividades:

Para poder implementar las funciones de las actividades y las auxiliares tenemos que tener en cuenta que podemos representar un número **Natural** como *Cero* y como *S Natural* (S m), basándonos en la definición recursiva de los naturales y que implementamos en el archivo *Aux.hs*.

```
data Natural = Cero | S Natural deriving (Eq, Show)
```

También creamos otro tipo de dato llamado **Matrioska** la cual tiene en sus elementos a *Mati* y *Cont Matrioska* (Cont M), esta definición recursiva esta implementada directamente en el archivo *mati.hs* ya que no fue necesaria una función auxiliar para implementar sus funciones correspondientes.

```
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)
```

### 1. a_natural

El propósito de la función es devolver el valor de tipo de dato **Natural** de un número entero, por lo tanto, recibe como parámetro un numero entero y devuelve natural.

```
a_natural :: Int -> Natural
```

Esta función es recursiva, por lo tanto es necesario tener un caso base y un caso recursivo.

Para el caso base, si el número entero ingresado por el usuario es igual a 0, entonces devuelve el natural *Cero*.

```
a_natural 0 = Cero
```

En el caso recursivo, si el número entero no es *x*, es necesario utilizar una función auxiliar la cual es **suma_natural**, que recibe como parámetros a *(S Cero)* y también la misma función *a_natural* con parámetro *(x-1)*.

```
a_natural x = suma_natural (S Cero) (a_natural(x-1))
```

### 2. a_entero

Esta función tiene que devolver el valor en número entero de un tipo de dato **Natural**, entonces, recibe un natural y devuelve un entero.

```
a_entero :: Natural -> Int
```

Esta función también es recursiva, por lo tanto en nuestro caso base, en el caso de que el natural sea *Cero* devolveremos 0.

```
a_entero Cero = 0
```

Para el caso recursivo, no es necesario una función auxiliar ya que utilizaremos el operador **(+)** (proveniente de el tipo de dato **Num**), si el número ingresado es un natural distinto de *Cero*, en este caso *(S m)* entonces devolvemos la suma de 1 más el resultado de la misma función *a_entero* que recibe como parámetro a *m*.

```
a_entero (S m) = 1 + a_entero(m)
```

### 3. potenciaNat

Esta función devuelve el resultado de elevar un natural a la potencia de un segundo natural, por lo que recibe dos naturales y devuelve un natural.

```
potenciaNat :: Natural -> Natural -> Natural
```

Para el caso base de esta función, si el primer natural que se recibe es distinto de *Cero*, pero el segundo natural es *Cero* entonces devolvemos *(S Cero)*.

```
potenciaNat m Cero = (S Cero)
```

En el caso recursivo, cuando recibimos dos naturales distintos de *Cero*, hacemos uso de la función auxiliar **multi_natural** el cual recibe como parámetros a el primer natural y a la misma **potenciaNat** teniendo como parámetros a el primer natural y el anterior del segundo natural.

```
potenciaNat m (S n) = multi_natural m (potenciaNat m n)
```

### 4. facNat

Esta función devuelve el factorial de un natural, por lo que recibe un natural y devuelve un natural.

```
facNat :: Natural -> Natural
```

En el caso base cuando el natural es *Cero* entonces devuelve el natural *(S Cero)*.

```
facNat (S Cero) = (S Cero)
```

Para el caso recursivo, se recibe un natural distinto de *(S n)*, se hace uso de la función auxiliar **multi_natural** que recibe como parámetros al mismo natural que se recibe y también a la misma función **facNat** teniendo como parámetro al anterior del natural recibido.

```
facNat (S n) = multi_natural (S n) (facNat n)
```

### 5. mayorIgual

La función **mayorIgual** devuelve el valor booleano *True* si una **Matrioska** es mayor o igual que una segunda **Matrioska**, y en caso contrario devuelve *False*, entonces la función recibe dos datos de tipo **Matrioska** y devuelve un dato de tipo *Bool*.

```
mayorIgual :: Matrioska -> Matrioska -> Bool
```

En este función en particular tenemos tres casos bases, el primero en caso de que las dos matrioskas sean *Mati* entonces devolvemos *True*, el segundo en caso de que la primera matrioska sea *Mati* y el segundo sea distinto de *Mati*, en este caso, devolvemos *False* y el ultimo en caso de que la primera matrioska sea distinta de *Mati* y la segunda sea *Mati*, entonces devolvemos *True*.

```
mayorIgual Mati Mati = True
mayorIgual Mati (Cont n) = False
mayorIgual (Cont m) Mati = True
```

Para el caso recursivo, cuando las dos matrioskas son distintas de *Mati* entones se devuelve a la misma función **mayorIgual** con parámetros a las matrioskas anteriores de las dos matrioskas ingresadas.

```
mayorIgual (Cont m) (Cont n) = mayorIgual m n
```

### 6. aplana

Esta función devuelve una lista con todas las **Matrioskas** que componen a una **Matrioska** anidada, por lo que recibe un dato de tipo **Matrioska** y devuelve una lista de tipo **Matrioska**.

```
aplana :: Matrioska -> [Matrioska]
```

En el caso base de esta función, cuando la matrioska que se recibe es *Mati*, entonces devolvemos una lista con *Mati*.

```
aplana Mati = [Mati]
```

En el caso recusivo, cuando las matrioska que se recibe es distinta de *Mati* entonces se devuelve una lista con esa misma matrioska y se le concatena el resultado de la misma función **aplana** teniendo como parámetro al anterior de la matrioska ingresada.

```
aplana (Cont m) = [Cont m] ++ aplana m
```

### Funciones Auxiliares

* **1. suma_natural**

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

* **2. multi_natural**

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
