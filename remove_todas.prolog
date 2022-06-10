remove_todas(_,[],[]).
remove_todas(X,[X|L],L1):- 
	remove_todas(X,L,L1).

remove_todas(X,[Y|Z],[Y|Z1]):-
    X \== Y,
    remove_todas(X,Z,Z1).

permutação([],[]).
permutação([X|Y],L):-
    permutação(Y,Y1).

concatena([],L,L).
concatena([X|R],L,[X|C]) :-
concatena(R,L,C).

adiciona(X,L,[X|L]).
 tira(_,[],[]).
 tira(X,[X|R],R).
 tira(X,[Y|R],[Y|R1]) :-
 tira(X,R,R1).
 adiciona_fim(X,L,NL) :-
 concatena(L,[X],NL).


remove(_,[],[]).
remove(N,[N|Y],Y).
remove(N,[X|Y],[X|L1]):-
    N \== X,
remove(N,Y,L1).


ap([],[],[]).
ap([],L,L).
ap([X|Y],[X1|Y1],[X|L1]):-
    ap(Y,[X1|Y1],L1).



    
