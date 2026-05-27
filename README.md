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


## Explicación del problema 
https://codeforces.com/problemset/problem/4/C
A new e-mail service "Berlandesk" is going to be opened in Berland in the near future. The site administration wants to launch their project as soon as possible, that's why they ask you to help. You're suggested to implement the prototype of site registration system. The system should work on the following principle.

Each time a new user wants to register, he sends to the system a request with his name. If such a name does not exist in the system database, it is inserted into the database, and the user gets the response OK, confirming the successful registration. If the name already exists in the system database, the system makes up a new user name, sends it to the user as a prompt and also inserts the prompt into the database. The new name is formed by the following rule. Numbers, starting with 1, are appended one after another to name (name1, name2, ...), among these numbers the least i is found so that namei does not yet exist in the database.

Input
The first line contains number n (1 ≤ n ≤ 105). The following n lines contain the requests to the system. Each request is a non-empty line, and consists of not more than 32 characters, which are all lowercase Latin letters.

Output
Print n lines, which are system responses to the requests: OK in case of successful registration, or a prompt with a new name, if the requested name is already taken.



## Implementaciones 
La implementación en el paradigma lógico se encuentra en el archivo
y en funcional en el archivo

## Arquitectura de solución (Diagramas)
   ### Funcional
   #### Análisis de complejidad
   ### Lógico 
   #### Análisis de complejidad

## Comparación entre paradigmas

De acuerdo con Robert W. Sebesta en Concepts of Programming Languages, una de las principales ventajas del paradigma funcional es que facilita la creación de programas más confiables debido a la ausencia de efectos secundarios y al uso de datos inmutables. También destaca que este paradigma simplifica las pruebas y el mantenimiento del software, ya que las funciones tienen comportamientos predecibles.

Sin embargo, Sebesta también menciona algunas desventajas. Entre ellas se encuentra que la programación funcional puede resultar menos eficiente en ciertos casos debido al uso intensivo de recursividad y creación constante de nuevas estructuras de datos. Además, para programadores acostumbrados al paradigma imperativo, la sintaxis y la forma de pensar funcional pueden ser más difíciles de aprender inicialmente.



## Pruebas

## Bibliografía
Bird, R., & Wadler, P. Introduction to Functional Programming.
https://usi-pl.github.io/doc/Bird_Wadler.%20Introduction%20to%20Functional%20Programming.1ed.pdf

Sebesta, R. W. (2012). Concepts of programming languages (10th ed.). Addison-Wesley / Pearson Education.
https://www.ime.usp.br/~alvaroma/ucsp/proglang/book.pdf

F. Estrepo. Paradigmas de Programación Funcional.
https://ferestrepoca.github.io/paradigmas-de-programacion/progfun/funcional_teoria/index.html
