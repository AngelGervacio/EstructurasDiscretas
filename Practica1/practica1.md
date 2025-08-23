# **Practica 1**

## ¿Cuáles son las principales diferencias entre *Haskell* y *Java*?

Tanto *Haskell* como *Java* son lenguajes de programación, sin embargo, *Java* es un lenguaje orientado a objetos y *Haskell* es un lenguaje de programación funcional, por lo que cada uno es usado de diferentes formas, por ejemplo, *Java* es utilizado para el desarrollo de aplicaciones de nivel empresarial, móviles y en la web, en cambio, *Haskell* es principalmente utilizado para el desarrollo científico y matemático, aun así, también puede ser utilizado para el desarrollo de aplicaciones y *Java* puede ser utilizado para el desarrollo científico.

Otro punto que tienen diferente es al momento de compilar las variables, mientras que en *Java* hay que ser especifico con el tipo de variable que se utilizara, en *Haskell* tambien se puede especificar el tipo de variable si es necesario como al momento de crear una función, sin embargo si no se especifica el tipo de variable en un caso diferente, el compilador determinara el tipo de variable dependiendo de como sea utilizada la variable.

**Java**

```
int numero = 45;

double cantidad = 50.75;
```

**Haskell**

```
numero = 45 -- variable sin especificar el tipo de variable.

cantidad :: Double -- variable con su tipo de variable especificada.
cantidad = 50.75
```

La sintaxis es otro punto que los hace diferentes, *Java* esta basado en *C-style*, el cual utiliza llaves **{}** para delimitar los bloques de código y punto y coma para finalizar una sentencia **;** , mientas que *Haskell* utiliza los espacios o tabulaciones para delimitar los bloques de código.

**Java**

```
public static void metodo(){
    //Esto es un ejemplo de un bloque de codigo en Java
}
```

**Haskell**

```
bloqueCodigo :: IO()
bloqueCodigo :: do
  putStrLn ("Esto es un bloque de codigo")
```

La concurrencia es diferente en ambos, mientras que *Java* esta diseñado para poder realizar varias tareas a la vez y ejecutar código y cálculos mientras la aplicación esta en ejecución, por otro lado, *Haskell* esta diseño para realizar las tareas con menos recursos pero de una manera eficiente para que sea posible realizar varias a la vez.

*Java* libera la memoria que ya no sera utilizada por el programa, para que pueda ser utilizada para guardar mas datos, *Haskell* también utiliza este método para liberar memoria, sin embargo, también utiliza una técnica para solo evaluar las expresiones cuando son necesarias, reduciendo la cantidad de memoria utilizada para el programa.

En el caso de *Java* las variables pueden ser modificadas, lo cual podría causar errores en el programa, sin embargo también se pueden establecer para no permitir su modificación, y para *Haskell*, una vez que las variables son creadas no pueden ser modificadas lo cual evita errores al momento de ejecutar el código.

Mientras que *Java* cuenta con una basta cantidad de librerías para el desarrollo de aplicaciones, *Haskell* no cuenta con tantas, pero si las principales para la computación científica, desarrollo web y análisis de datos.

Una de las diferencias importantes que tienen es que *Java* es mas fácil de aprender y es el elegido por muchos principiantes para comenzar a programar, mientras que *Haskell* es un poco difícil de aprender debido a sus conceptos avanzados, aun así, ambos lenguajes cuentan con una gran comunidad de desarrolladores que dan ayuda y recursos para entender el lenguaje.

## ¿Por qué *Haskell* no ha alcanzado una adopción significativa en la industria del software?

Aunque *Haskell* es un lenguaje conocido y con una gran comunidad de desarrolladores, no ha sido tan utilizado en la industria por varios aspectos:

* Principalmente a que es difícil de aprender, por lo que las personas utilizan otros lenguajes que se les hacen mas fáciles de manejar.

* Su programación funcional lo hace diferente a los demás lenguajes de programación que son basados en el lenguaje orientado a objetos y son los mas utilizados.

* Aunque *Haskell* esta enfocado en la programación funcional y sirve para la resolución de problemas matemáticos, entre otros, existen otros lenguajes que pueden realizar algunas cosas iguales a *Haskell* y los usuarios optan por estas opciones por su facilidad y popularidad.

Aun así *Haskell* ha sido utilizado por empresas como **Facebook** para filtros de spam y sus estándares de seguridad, por **Microsoft** para sus sistemas de serialización y **AT&T** para automatizar su sistema de procesamiento de quejas de sus usuarios.

Ademas es un lenguaje preferido para la resolución de problemas académicos, para el desarrollo científico, desarrollo web y análisis de datos.

## Si pudieras realizar una simple analogía entre *Git* y *Github* ¿Cuál se te vendría a la mente?

*Git* es a *Github* como un libro es a una biblioteca.

## Bibliografía

* Fernández, P. (2022, septiembre 9). Qué es la programación funcional y características. Openwebinars.net. https://openwebinars.net/blog/que-es-la-programacion-funcional-y-sus-caracteristicas/

* Haskell: descubre el lenguaje de programación funcional del momento. (2023, agosto 29). Hackio.com; Hackio by thePower. https://www.hackio.com/blog/haskell-lenguaje-de-programacion

* Swe, S. (2023, abril 28). Java vs. Haskell: Understanding the key differences. Medium. https://blog.devgenius.io/java-vs-haskell-understanding-the-key-differences-5b6b777c577e

* What does immutable variable in Haskell mean? (s/f). Stack Overflow. Recuperado el 23 de agosto de 2025, de https://stackoverflow.com/questions/38040812/what-does-immutable-variable-in-haskell-mean
