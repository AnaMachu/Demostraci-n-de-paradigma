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

De acuerdo con Robert W. Sebesta en Concepts of Programming Languages, una de las principales ventajas del paradigma funcional es que facilita la creación de programas más confiables debido a la ausencia de efectos secundarios y al uso de datos inmutables. También destaca que este paradigma simplifica las pruebas y el mantenimiento del software, ya que las funciones tienen comportamientos predecibles.

El paradigma funcional influyó en lenguajes como Lisp, Haskell y Scheme, caracterizados por el uso de funciones puras, recursividad y ausencia de efectos secundarios.



## Paradigma Lógico 


## Explicación del problema 

## Implementaciones 

## Arquitectura de solución (Diagramas)
   ### Funcional
   #### Análisis de complejidad
   ### Lógico 
   #### Análisis de complejidad

## Comparación entre paradigmas

## Pruebas

## Bibliografía
Bird, R., & Wadler, P. Introduction to Functional Programming.
https://usi-pl.github.io/doc/Bird_Wadler.%20Introduction%20to%20Functional%20Programming.1ed.pdf

Sebesta, R. W. (2012). Concepts of programming languages (10th ed.). Addison-Wesley / Pearson Education.
https://www.ime.usp.br/~alvaroma/ucsp/proglang/book.pdf

F. Estrepo. Paradigmas de Programación Funcional.
https://ferestrepoca.github.io/paradigmas-de-programacion/progfun/funcional_teoria/index.html
