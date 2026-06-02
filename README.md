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
https://codeforces.com/gym/102697/problem/107 
El problema de N-Queens consiste en regresar todos los arreglos válidos en los que N reinas se puedan colocar en un tablero N x N sin que ninguna ataque a otra (GeekforGeeks, 2025). Esto es con respecto a las reglas de ajedrez, donde esta pieza puede moverse a cualquier posición vertical, horizontal y diagonal, por lo que no pueden haber reinas compartiendo filas. Un ejemplo de este problema:
<img width="618" height="474" alt="NQUEENS" src="https://github.com/user-attachments/assets/ea35c281-329c-40f3-8b0c-b13fef9d09e6" />

Este problema es un claro ejemplo para backtracking, un algoritmo usado para buscar todas las posibles combinaciones mediante una búsqueda en profundidad y retroceder (“backtrack”) cuando se determina que una camino no llegará a una solución completa y válida. Este algoritmo es utilizado en áreas como inteligencia artificial, problemas de satisfacción de restricciones y optimización combinatoria (Harper, E. 2025). Estas aplicaciones muestran la importancia de este algoritmo para resolver problemas complejos en muchas áreas, siendo utilizado para medir y comparar el desempeño de lenguajes lógicos, funcionales e imperativos. 

En contraste, se comparará con el paradigma funcional, el cuál se basa en transformar datos mediante funciones puras, sin estado mutable ni efectos secundarios. Para N-Queens, se construirá  la solución como una cadena de transformaciones, generando posiciones candidatas, filtrando las que violan restricciones, y acumulando las válidas. El principal fuerte de este paradigma es que la estructura del problema es recursiva, pudiéndose expresar de forma directa, donde la recursión es el mecanismo principal de control.

Ambos paradigmas son declarativos, pero de formas distintas: el lógico declara relaciones, el funcional declara transformaciones. Sobre el mismo problema, podemos ver y evaluar esta diferencia, utilizando como lenguajes de programación Haskell para el funcional y Prolog para el lógico (Gómez, L.).

## Implementaciones 
Para la implementación de los códigos hay que partir de 3 principios básicos:
Si reina 1 y 2 están en la fila r, es inválido.
Si reina 1 y 2 están en la columna c, es inválido.
Si reina 1 está en r1  y c1, reina 2 está en r2  y c2 y -> abs(r2  - r1) = abs(c2  - c1), es inválido.

La implementación en el paradigma lógico se encuentra en el archivo [NqueensLogic.pl](NqueensLogic.pl)
y en funcional en el archivo [NqueensFunctional.rkt](NqueensFunctional.rkt)

## Arquitectura de solución (Diagramas)

   ### Funcional
   <p>
      
   <img width="200" height="300" alt="diagrama_queens" src="https://github.com/user-attachments/assets/71adf9ff-cd11-42c7-8355-90e8ed27e7d2" /> <br>
   <img width="224" height="400" alt="diagrama_safe" src="https://github.com/user-attachments/assets/f5a8360f-3b96-4a5a-8d95-846506e04c7b" /> <br>
   <img width="400" height="300" alt="diagrama_check" src="https://github.com/user-attachments/assets/9fa65009-79af-479a-9074-9bc2f4c86619" /> <br>
   <img width="212" height="400" alt="diagrama_flatmap" src="https://github.com/user-attachments/assets/4948c08c-5bf3-43fd-8caa-b731ce979511" /> <br>
  </p>
   
   #### Análisis de complejidad
   * Complejidad temporal
   * Complejidad espacial O(n)
  
   
   ### Lógico 
   #### Análisis de complejidad
   * Complejidad temporal 
   * Complejidad espacial O(n)


## Pruebas
Las pruebas automatizadas se pueden encontrar en [registration_tests.pl](registration_tests.pl) y [registration_tests.rkt](registration_tests.rkt)

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
