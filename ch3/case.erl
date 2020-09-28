-module(case).
-export([insert/2,beach/1]).

insert(X, []) ->
	[X];
isert(X, Set) ->
	case lists:member(X,Set) of
		true -> Set;
		false -> [X|Set]
	end.

beach(Temperature) ->
	case Temperature of
		{celcius, N} when N >= 20, N =< 45 ->
			'favorable';
		{kelvin, N}, when N >= 293, N =< 318 ->
			'scientifically favorable';
		{fahrenheit, N} when N >= 68, N =< 113 ->
			'favorable in the US';
		_ ->
			'avoid beach'
	end.
