-module('2_27').
-export([main/1]).

deep_reverse_([H|T],List2) ->
	if is_list(H) ->
			deep_reverse_(T, [deep_reverse_(H, [])|List2]);
	   true ->
			deep_reverse_(T, [H|List2])
	end;
%% deep_reverse_([H|[]],List2) ->
%% 	H;
deep_reverse_([],List2) ->
	List2.

deep_reverse(List) ->
	deep_reverse_(List,[]).

main(_) ->
	%% io:format("~p~n",[last_pair([1,2,3,4,5,6,7,8])]).
	io:format("~p~n",[deep_reverse([1,[2,3,4,5],[6,7,8,9,0]])]).
