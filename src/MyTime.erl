%%%-------------------------------------------------------------------
%%% @author 11836
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. 1月 2023 0:59
%%%-------------------------------------------------------------------
-module('MyTime').
-author("11836").

%% API
-export([my_time_func/1, my_date_string/0]).

my_time_func(F) ->
  {Hour1, Minute1, Second1} = erlang:time(),
  F,
  {Hour2, Minute2, Second2} = erlang:time(),
  io:format("runtime:~f~n", [((Hour2-Hour1)/3600+(Minute2-Minute1)/60+(Second2-Second1))/1000]).

my_date_string() ->
  {Year, Month, Day} = erlang:date(),
  {Hour, Minute, Second} = erlang:time(),
  io:format("~p年~p月~p日:~p时~p分~p秒~n", [Year, Month, Day, Hour, Minute, Second]).
