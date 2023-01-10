%%%-------------------------------------------------------------------
%%% @author 11836
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. 1月 2023 20:48
%%%-------------------------------------------------------------------
-module(client).
-author("11836").
-import(geometry, [calculate_area/1]).
-import(tuple2list,[my_tuple_to_list/1]).
-import(mytime,[my_date_string/0]).
%% API
-export([start/0,start1/0,start2/0]).

start() ->
  X = calculate_area({square,4}),
  Y = calculate_area({rectangle,10,10}),
  Z = calculate_area({round,2}),
  M = calculate_area({right_triangle,4,4}),
  io:format("X:~p Y:~p Z:~p M:~p",[X,Y,Z,M]).

start1()->
  MyTuple = {person,165,100},
  MyList = my_tuple_to_list(MyTuple),
  io:format("X:~p",[MyList]).

start2()->
  my_date_string().
