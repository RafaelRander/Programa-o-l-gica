% A = joao   B = maria   C = rosa   D = jose   E = tais   F = pedro   G = eduardo
pai(joao, eduardo).
pai(joao, rosa).
pai(joao, jose).
pai(jose, pedro).

mae(joao, eduardo).
mae(joao, rosa).
mae(joao, jose).
mae(tais, pedro).

masculino(joao).
masculino(pedro).
masculino(jose).
masculino(eduardo).

feminino(maria).
feminino(tais).
feminino(rosa).

/* definição de avô */
avo(X,Z):-
            pai(X,Y), pai(Y,Z), masculino(X), masculino(Y).

avo(X,Z):-
            pai(X,Y), mae(Y,Z), masculino(X), feminino(Y).

/* definição de tio */

tio(X,Y):-
            pai(P, X), pai(P, Y), homem(P), homem(X).
tio(X,Y):-
            mae(P, X), mae(P, Y), mulher(P), homem(X).

/* definição de avó */
avo(X,Z):-
            mae(X,Y), mae(Y,Z), feminino(X), feminino(Y).

avo(X,Z):-
            mae(X,Y), pai(Y,Z), feminino(X), masculino(Y).
