instructor(eckert, [csc120, csc205, csc220, csc230, csc240]).
instructor(smith, [csc120, csc220, csc230]).
instructor(jones, [csc220, csc240]).
teaches(brown, csc120).

member(X, [X | _]).
member(X, [_ | T]) :- member(X, T).

teaches(N, C) :- 
	instructor(N, X), member(C, X).

share_class(eckert, smith) :-
	member(X, [csc120, csc205, csc220, csc230, csc240]),
	member(X, [csc120, csc220, csc230]).
	
share_class(smith, john) :-
	member(X, [csc120, csc240]),
	member(X, [csc120, csc220, csc230]).

share_class(eckert, smith, john) :-
	member(X, [csc120, csc205, csc220, csc230, csc240]),
	member(X, [csc120, csc240]),
	member(X, [csc120, csc220, csc230]).