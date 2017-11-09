%% -module(2_1).

%% last_pair([H|[]]) ->
%% 	H;
%% last_pair([_|T]) ->
%% 	last_pair(T).

reverse_({[H|T],List2}) ->
	reverse_({T,[H|List2]});
reverse_({[],List2}) ->
	List2.

reverse(List) ->
	reverse_({List, []}).

main(_) ->
	%% io:format("~p~n",[last_pair([1,2,3,4,5,6,7,8])]).
	io:format("~p~n",[reverse([1,2,3,4,5,6,7,8,9,0])]).
