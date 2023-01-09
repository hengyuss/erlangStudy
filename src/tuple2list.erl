%%%-------------------------------------------------------------------
%%% @author 11836
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. 1月 2023 21:25
%%%-------------------------------------------------------------------
-module(tuple2list).
-author("11836").

%% API
-export([my_tuple_to_list/1]).

my_tuple_to_list(T) ->
  my_tuple_to_list(T, tuple_size(T), 0, []).
my_tuple_to_list(T, Index, F, L) when Index > F ->
  my_tuple_to_list(T, Index-1, F, [element(Index, T) | L]);
my_tuple_to_list(_, Index, F, L) when Index =:= F ->
  L.

