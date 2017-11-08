-module('2_28').
-export([main/1]).

fringe_([H|T],List2) ->
	if is_list(H) ->
			fringe_(T, fringe_(H, List2));
	   true ->
			fringe_(T, [H|List2])
	end;
%% fringe_([H|[]],List2) ->
%% 	H;
fringe_([],List2) ->
	List2.

fringe(List) ->
	lists:reverse( fringe_(List,[]) ).

main(_) ->
	%% io:format("~p~n",[last_pair([1,2,3,4,5,6,7,8])]).
	io:format("~p~n",[fringe([1,[2,3,4,5],[6,7,8,9,0]])]).
