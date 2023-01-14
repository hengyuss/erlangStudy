%%%-------------------------------------------------------------------
%%% @author 11836
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. 1月 2023 15:02
%%%-------------------------------------------------------------------
-module(myfile).
-author("11836").

%% API
-export([read/1]).

read(X) ->
  try file:read_file(X) of
    {ok,Bin} -> Bin;
    {error,Reason} ->  throw(Reason)
  catch
    throw:X -> io:format("throw Reason is :~p~n",[X]);
    throw:X -> io:format("error Reason is :~p~n",[X]);
    throw:X -> io:format("exit Reason is :~p~n",[X])
  end.