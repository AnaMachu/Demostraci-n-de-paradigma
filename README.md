# Demostracion-de-paradigma

## Paradigma Funcional
El paradigma funcional es un modelo de programación basado en funciones matemáticas y en la evaluación de expresiones, evitando cambios constantes de estado y modificación de variables. Pertenece a los paradigmas declarativos, ya que se enfoca en describir qué debe hacerse y no cómo hacerlo.

Richard Bird y Philip Wadler, en *Introduction to Functional Programming*, explican que:

> “Programming in a functional language consists of building definitions and using the computer to evaluate expressions.”

Esto significa que el programador define funciones y la computadora evalúa expresiones hasta obtener un resultado. Además, las funciones:

> “obey normal mathematical principles.”

Por ello, una función siempre produce el mismo resultado para las mismas entradas, facilitando el análisis y la corrección de programas. ([usi-pl.github.io]


La base teórica del paradigma funcional es el **cálculo lambda**, desarrollado por Alonzo Church en 1936. Según el sitio sobre paradigmas funcionales:

> “Es el más pequeño lenguaje universal de programación”.

El cálculo lambda representa funciones mediante expresiones como:

\lambda x . M

donde (x) es el parámetro y (M) el cuerpo de la función. Una función matemática como:

f(x,y)=x+y

puede escribirse en cálculo lambda como:

\lambda x.\lambda y.(x+y)

Estas ideas dieron origen a conceptos como funciones de orden superior, currificación e inmutabilidad.
El paradigma funcional influyó en lenguajes como Lisp, Haskell y Scheme, caracterizados por el uso de funciones puras, recursividad y ausencia de efectos secundarios.



## Paradigma Lógico 
El paradigma lógico es un modelo de programación basado en la lógica matemática y en la deducción automática de resultados. A diferencia de los paradigmas imperativos, donde el programador especifica paso a paso cómo resolver un problema, en el paradigma lógico se describen hechos y reglas, dejando que el sistema determine las soluciones mediante procesos de inferencia.

La base teórica de este paradigma es la lógica de predicados de primer orden, utilizada para representar relaciones y conocimiento de manera formal. Según el manual del Tecnológico Nacional de México, la programación lógica permite modelar problemas mediante relaciones lógicas y consultas, enfocándose más en la descripción del problema que en el algoritmo de solución.

John Lloyd, en *Foundations of Logic Programming*, explica que la programación lógica interpreta la computación como un proceso de demostración matemática. Esto significa que ejecutar un programa equivale a probar si una conclusión puede derivarse de un conjunto de reglas y hechos previamente definidos.

Un programa lógico se compone principalmente de:

* Hechos:afirmaciones verdaderas dentro del sistema.
* Reglas: relaciones lógicas que permiten derivar nueva información.
* Consultas:preguntas realizadas para obtener respuestas del sistema.

Por ejemplo, un hecho puede representarse así:

```prolog id="h7m4zs"
padre(juan, maria).
```

y una regla lógica como:

```prolog id="x2n8qd"
abuelo(X,Y) :- padre(X,Z), padre(Z,Y).
```

Esta regla expresa que “X es abuelo de Y si X es padre de Z y Z es padre de Y”.

Uno de los mecanismos fundamentales del paradigma lógico es la **unificación**, proceso mediante el cual el sistema busca hacer coincidir expresiones lógicas para encontrar valores válidos. Otro mecanismo importante es el **backtracking**, técnica que permite retroceder y probar diferentes alternativas hasta hallar una solución correcta.

De acuerdo con Uwe Schöning, la lógica proporciona herramientas formales para representar conocimiento y realizar razonamientos precisos. Gracias a ello, la programación lógica es especialmente útil en áreas como inteligencia artificial, sistemas expertos, procesamiento de lenguaje natural y bases de conocimiento.

El lenguaje más representativo de este paradigma es Prolog, cuyo nombre proviene de *Programming in Logic*. En este lenguaje, los programas se construyen declarando relaciones lógicas, mientras que el motor de inferencia se encarga de resolver consultas automáticamente.

En conclusión, el paradigma lógico propone una forma declarativa de programación basada en hechos, reglas y deducción matemática. Su fundamento en la lógica formal permite desarrollar sistemas capaces de representar conocimiento y razonar automáticamente para resolver problemas complejos.

## Comparación entre paradigmas

De acuerdo con Robert W. Sebesta en Concepts of Programming Languages, una de las principales ventajas del paradigma funcional es que facilita la creación de programas más confiables debido a la ausencia de efectos secundarios y al uso de datos inmutables. También destaca que este paradigma simplifica las pruebas y el mantenimiento del software, ya que las funciones tienen comportamientos predecibles.

Sin embargo, Sebesta también menciona algunas desventajas. Entre ellas se encuentra que la programación funcional puede resultar menos eficiente en ciertos casos debido al uso intensivo de recursividad y creación constante de nuevas estructuras de datos. Además, para programadores acostumbrados al paradigma imperativo, la sintaxis y la forma de pensar funcional pueden ser más difíciles de aprender inicialmente.

Entre las ventajas del paradigma lógico destacan:

Programas más declarativos y compactos.
Facilidad para representar conocimiento.
Capacidad de razonamiento automático.

Sin embargo, también presenta desventajas:

Menor eficiencia en algunos problemas complejos.
Alto consumo de recursos por el proceso de inferencia.
Mayor dificultad de aprendizaje para programadores acostumbrados a paradigmas imperativos.


## Explicación del problema 
### N QUEENS
El problema de N-Queens consiste en regresar todos los arreglos válidos en los que N reinas se puedan colocar en un tablero N x N sin que ninguna ataque a otra (GeekforGeeks, 2025). Esto es con respecto a las reglas de ajedrez, donde esta pieza puede moverse a cualquier posición vertical, horizontal y diagonal, por lo que no pueden haber reinas compartiendo filas. Un ejemplo de este problema:
<img width="618" height="474" alt="NQUEENS" src="https://github.com/user-attachments/assets/ea35c281-329c-40f3-8b0c-b13fef9d09e6" />

Este problema es un claro ejemplo para backtracking, un algoritmo usado para buscar todas las posibles combinaciones mediante una búsqueda en profundidad y retroceder (“backtrack”) cuando se determina que una camino no llegará a una solución completa y válida. Este algoritmo es utilizado en áreas como inteligencia artificial, problemas de satisfacción de restricciones y optimización combinatoria (Harper, E. 2025). Estas aplicaciones muestran la importancia de este algoritmo para resolver problemas complejos en muchas áreas, siendo utilizado para medir y comparar el desempeño de lenguajes lógicos, funcionales e imperativos. 

En contraste, se comparará con el paradigma funcional, el cuál se basa en transformar datos mediante funciones puras, sin estado mutable ni efectos secundarios. Para N-Queens, se construirá  la solución como una cadena de transformaciones, generando posiciones candidatas, filtrando las que violan restricciones, y acumulando las válidas. El principal fuerte de este paradigma es que la estructura del problema es recursiva, pudiéndose expresar de forma directa, donde la recursión es el mecanismo principal de control.

Ambos paradigmas son declarativos, pero de formas distintas: el lógico declara relaciones, el funcional declara transformaciones. Sobre el mismo problema, podemos ver y evaluar esta diferencia, utilizando como lenguajes de programación Racket para el funcional y Prolog para el lógico (Gómez, L.).

### The Man Machine 
 El problema de N Queens se puede encontrar en codeforces bajo el título de The Man Machine y es el siguiente link <br>
 https://codeforces.com/gym/102697/problem/107 
 donde no se pide de output un arreglo, más bien solo la cuenta total de soluciones.
##### Descripción 
You played against a Man Machine in chess, and because it is a superhuman being, you lost every game. Now, you're trying to practice chess so that you can beat the Man Machine.

To practice, you want to figure out how many different ways there are to place N
 queens on an N
 by N
 chessboard, such that no two queens attack each other (queens can attack any number of spaces directly diagonal, left, right, up, or down). This is called the N
-queens problem, and is a standard computer science problem involving recursion and backtracking. Your task is to implement this solution on chessboards where N
 can be up to 9.

Input
The only line of input contains a single positive integer N: the size of the chessboard.

Output
Output a single positive integer c: the number of ways to place N
 queens on the chessboard, such that no two queens attack each other.

Examples<br>
Input<br>
8<br>
Output<br>
92<br>


## Arquitectura de solución (Diagramas)
Se deben encontrar todas las posibles soluciones para las reinas, por lo que se hacen evaluaciones de factibilidad en cada fila de cada columna de todo el tablero basados en estos 3 criterios 

* Si reina 1 y 2 están en la fila r, es inválido.
* Si reina 1 y 2 están en la columna c, es inválido.
* Si reina 1 está en r1  y c1, reina 2 está en r2  y c2, es inválido.

Algunas reinas en ciertas filas y columnas puede que no produzcan soluciones válidas.
<img width="951" height="363" alt="image" src="https://github.com/user-attachments/assets/6a245f9e-855a-40aa-ae62-00131f17eba2" />
<img width="638" height="328" alt="image" src="https://github.com/user-attachments/assets/d3cb0784-69bf-43d7-9328-54d74e006ca0" />
<img width="550" height="313" alt="image" src="https://github.com/user-attachments/assets/dba2db61-c365-439d-8fc8-0396b79b1ba3" />

Ahora en la columna 2<br>
Y también puede que haya más de una solución válida por iteración.
<img width="591" height="591" alt="image" src="https://github.com/user-attachments/assets/8a414a15-17c3-4436-80d0-695a3f4f2ac0" />

   ### Implementación en Funcional
   
   La implementación en el paradigma funcional se encuentra en el archivo [NqueensFunctional.rkt](NqueensFunctional.rkt)

   La función principal es `place-queens( n  k )`

   Donde n=tamaño del tablero y k = reinas por colocar. Primero va al caso base de su recusión el cual es que ya no queden reinas por colocar y devuelve una lista vacía.
   Como k tiene que ser igual a n  y es diferente a cero, se desccarta el caso base y se va al caso recursivo donde se manda a llamar a sí misma con una k menos ya que ocupa tener una lista sobre la  cual iterar así que queda pausado llamandose hasta que k=0 y se devuelva una lista con una lista vacía dentro para entonces poder ejecutar sobre esa.

   `(place-queens n (- k 1))`

Entonces luce así :
   
   place-queens 4 4  ← esperando <br>
   place-queens 4 3  ← esperando <br>
   place-queens 4 2  ← esperando <br>
   place-queens 4 1  ← esperando <br>
   place-queens 4 0  ← EJECUTA <br>
Una vez que hay una lista con una lista vacía dentro, esta se pasa a la ultima llamada pendiente y se empieza a ejecutar el código de 

```racket
(flatmap (lambda (qs)
           (map (lambda (q) (cons q qs))
                (range 1 (+ 1 n)))
         '(()))
````
Donde qs es la lista vacía y procede a hacer cons (agregar al inicio de la lista) los elementos q y estos elementos toman los valores de `range 1(+1 n)`y genera ((1)(2)(3)(4)).
Flatmap lo que hace es que aplana la lista de listas que acaba de regresar `map`para que no sea anidada usando apply y append para que quede ( 1 2 3 4 ) 
```racket
(define (flatmap f lst) 
  (apply append (map f lst)))
```
Para después hacer un filtro de lo que es seguro de la lista aplanada con:
```racket
filter safe?

(define (safe? qs)
  (check (car qs) (cdr qs) 1))

(define (check q rest d)
  (or (null? rest)
      (and (not (= q (car rest)))
           (not (= (abs (- q (car rest))) d));
           (check q (cdr rest) (+ d 1)))));
```
Donde en `check( q rest d)` se verfica que se cumpla con los 3 criterios de no ataque entre reinas, `safe?` determina si la solución es true o false dependiendo del reultado de check para finalmente aplicarle filter que descarta todos los false.

Una vez filtrado se llegan a las soluciones y con 
```racket
(define (count-solutions n)
  (length (queens n)))
```
solo se cuentan.
   #### Diagramas de lógica del código por función
   <p>
   <img width="250" height="300" alt="diagrama_queens" src="https://github.com/user-attachments/assets/71adf9ff-cd11-42c7-8355-90e8ed27e7d2" /> 
  <img width="224" height="300" alt="diagrama_safe" src="https://github.com/user-attachments/assets/f5a8360f-3b96-4a5a-8d95-846506e04c7b" /> <br>
  <img width="400" height="300" alt="diagrama_check" src="https://github.com/user-attachments/assets/9fa65009-79af-479a-9074-9bc2f4c86619" /> 
  <img width="212" height="300" alt="diagrama_flatmap" src="https://github.com/user-attachments/assets/4948c08c-5bf3-43fd-8caa-b731ce979511" /> <br>
  </p>

  #### Análisis de complejidad
   * Complejidad Temporal O(n^n+1)
  Costo de place-queens O(n^n)- Para cada solución parcial intente colocar una reina para cada columna en cualquier fila<br>
  Costo de safe? - O(n) recorre k reinas colocadas<br>
   * Complejidad Espacial O(n^n+1)
 Como se tienen n^n configuraciones y cada una tiene n elementos entonces O(n) * O(n^n) da la complejidad espacial
   
## Implementción en Lógico 
   Para este probelma también propongo una solución en Prolog ya que prolog es muy enfocado en backtracking y se encuentra en el archivo  [NqueensLogic.pl](NqueensLogic.pl)

 ## Comparación de solución para el probelma 
Prolog es una excelente elección para las NQueens porque el problema puede expresarse como un conjunto de restricciones lógicas y el mecanismo de backtracking del lenguaje encuentra automáticamente todas las soluciones. Sin embargo, la implementación en Racket es más eficiente porque realiza poda temprana del espacio de búsqueda al verificar la seguridad de cada reina durante la construcción de la solución, mientras que Prolog genera primero permutaciones completas y después comprueba si son válidas.
  
 ## Pruebas
   Dado que Codeforces no acepta Racket, procedí crear una solución en c++  [Nqueensccpp.cpp](Nqueensccpp.cpp) para poder evaluarla.
   <img width="1337" height="224" alt="image" src="https://github.com/user-attachments/assets/e075c158-a42e-4838-9fb1-5720f8cf3817" />
   Estos son los test cases y sus outputs: <br>
   <img width="500" height="400" alt="image" src="https://github.com/user-attachments/assets/51f7f05e-9f40-4529-8019-bec3c7242af8" />
  Dado que CodeForces solo me brindó esos 2 test cases, yo generé los demás casos de prueba (solo 9 porque el problema restringe N<9) donde hay input y output esperados y los comparé con la herramienta de codeforces "Custom  innvocation", se puede ver que coinciden por lo que la implementación es correcta. <br>
  <img width="182" height="294" alt="image" src="https://github.com/user-attachments/assets/49afcc01-eee7-4bac-8e45-89fa5c7a9ea0" />
<img width="300" height="200" alt="image" src="https://github.com/user-attachments/assets/38c4cf77-b368-48c8-b064-16da50423a4b" />
<img width="300" height="200" alt="image" src="https://github.com/user-attachments/assets/cd145d21-2a22-483e-995e-86a98bcda3c6" />
<img width="300" height="200" alt="image" src="https://github.com/user-attachments/assets/a56588b7-8b59-4b27-a045-068b30ede0a1" />
<img width="300" height="200" alt="image" src="https://github.com/user-attachments/assets/8aa2f2a1-630e-488c-a397-a9d341ef6460" />
<img width="300" height="200" alt="image" src="https://github.com/user-attachments/assets/3f7d74f3-315f-4e9b-a483-33365d9ec85b" />
<img width="330" height="200" alt="image" src="https://github.com/user-attachments/assets/bda33779-07c8-4fc2-bb06-d2c6c53787dd" />
<img width="300" height="200" alt="image" src="https://github.com/user-attachments/assets/d55c2bcd-1896-49f1-9bd1-5697581cdb11" />
<img width="300" height="200" alt="image" src="https://github.com/user-attachments/assets/3a4ecbdd-2ce5-4d37-882d-b32644912385" />

 
Para porbarlo en Racket solo agregé esta sección al final del código donde uso los mismos inputs para compararlo con los outpus de c++ y son exactamente iguales, por lo que la propuesta de solución funciona.
   Inputs y outputs esperados                  |         Inputs y outputs obtenido de  [NqueensFunctional.rkt](NqueensFunctional.rkt) <br>
   <img width="204" height="317" alt="image" src="https://github.com/user-attachments/assets/8b947d63-681b-4aee-8037-1c1714c7e2d7" />
   <img width="219" height="301" alt="image" src="https://github.com/user-attachments/assets/a1c982f6-a584-41a3-b89a-57e473468e87" />

Y para porbarlo en Racket solo agregé esta sección al final del código donde uso los mismos inputs para compararlo con los outpus de c++ y son exactamente iguales, por lo que la propuesta de solución funciona.
   Inputs y outputs esperados                  |         Inputs y outputs obtenido de  [NqueensLogic.pl](NqueensLogic.pl) <br>
  <img width="204" height="317" alt="image" src="https://github.com/user-attachments/assets/8b947d63-681b-4aee-8037-1c1714c7e2d7" />
   


## Bibliografía
Bird, R., & Wadler, P. Introduction to Functional Programming.
https://usi-pl.github.io/doc/Bird_Wadler.%20Introduction%20to%20Functional%20Programming.1ed.pdf

Sebesta, R. W. (2012). Concepts of programming languages (10th ed.). Addison-Wesley / Pearson Education.
https://www.ime.usp.br/~alvaroma/ucsp/proglang/book.pdf

F. Estrepo. Paradigmas de Programación Funcional.
https://ferestrepoca.github.io/paradigmas-de-programacion/progfun/funcional_teoria/index.html

Lloyd, J. W. (1987). Foundations of Logic Programming (2nd ed.). Springer-Verlag. Foundations of Logic Programming PDF

Schöning, U. (2008). Logic for Computer Scientists. Birkhäuser Boston. Logic for Computer Scientists PDF

Tecnológico Nacional de México. (s.f.). Manual de prácticas de programación funcional y lógica. Manual de Prácticas de Programación Funcional y Lógica – TecNM

Harper, E. (2025). Analyzing the importance of backtracking in logic programming. logic-programming.org. https://logic-programming.org/analyzing-the-importance-of-backtracking-in-logic-programming/

Gómez, L. (s.f.). Paradigmas de programación. KeepCoding Tech School. https://keepcoding.io/blog/paradigmas-de-programacion/
