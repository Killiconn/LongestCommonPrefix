:- set_prolog_flag(double_quotes, chars).

prefixProlog("", Lcp) :- getterPrefix("", "", Lcp).
prefixProlog([A], Lcp) :- getterPrefix(A, A, Lcp).
prefixProlog([B, C | D], Lcp) :- getterPrefix(B, C, Lcp),
								 prefixProlog([C | D], Lcp).

getterPrefix("", _, "").
getterPrefix(_, "", "").
getterPrefix([X | XS], [X | YS], [X |ZS]) :- getterPrefix(XS, YS, ZS).
getterPrefix([X | _], [X1 | _], []) :- X \= X1.
getterPrefix([X | _], [X | _], []).
