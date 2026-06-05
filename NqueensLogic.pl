:- use_module(library(lists)).

queens(N, Qs) :- %Regresa la lista que es la solución 
    numlist(1, N, Ns), %crea lista de números del 1 al N  llamada NS
    permutation(Ns, Qs),%genera una permutación de NS y la guarda en Qs
    safe(Qs).

safe([]). %caso base, lista vacía es segura
safe([Q|Qs]) :-
    no_attack(Q, Qs, 1),
    safe(Qs).

no_attack(_, [], _). 
no_attack(Q, [Q1|Qs], D) :- %Q primera, Q1 seguna, Qs el resto , D distancia
    Q =\= Q1 + D, %comprobación de que no están en diagonal
    Q =\= Q1 - D,
    D1 is D + 1, % se aumenta la distancia 
    no_attack(Q, Qs, D1). %compara la misma reina con la siguiente

count_solutions(N, Count) :-
    aggregate_all(count, queens(N, _), Count).% cuantas veces tuvo éxito queens
