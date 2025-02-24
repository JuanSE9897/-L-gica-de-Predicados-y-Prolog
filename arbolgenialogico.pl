%HECHOS
padrede(abraham,homero).
padrede(abraham,herbert).
padrede(homero,lisa).
padrede(homero,bart).
padrede(homero,maggie).
padrede(clancy,patty).
padrede(clancy,selma).
padrede(clancy,marge).

%HECHOS
madrede(mona,homero).
madrede(mona,herbert).
madrede(marge,lisa).
madrede(marge,bart).
madrede(marge,maggie).
madrede(selma,ling).
madrede(jacqueline,marge).
madrede(jacqueline,selma).
madrede(jacqueline,patty).

%REGLAS 
hijode(B,A):- padrede(A,B).
hijode(B,A):- madrede(A,B).
abuelode(A, C):- padrede(A, B), padrede(B, C).
abuelode(A, C):- padrede(A, B), madrede(B, C).
abuelade(A, C):- madrede(A, B), padrede(B, C).
abuelade(A, C):- madrede(A, B), madrede(B, C).
hermanode(B, C):- padrede(A, B), padrede(A, C), B \= C.
hermanode(B, C):- madrede(A, B), madrede(A, C), B \= C.

