-module(2_17).

last_pair([H|[]]) ->
	H;
last_pair([_|T]) ->
	last_pair(T).

main(_) ->
	io:format("~p~n",[last-pair([1,2,3])]).
