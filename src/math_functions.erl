
-module(math_functions).
-export([even/1, odd/1,filter/2,split/1]).

even(X) when is_integer(X) ->
    case (X rem 2 =:= 0) of
        true -> true;
        false -> false
    end.

odd(X) when is_integer(X) ->
    case (X rem 2 =/= 0) of
        true -> true;
        false ->false
    end.


filter(F,L)->
    [X || X <- L,F(X) =:= true].

%%split(L) ->
%%    Even = [X || X<-L,X rem 2 =:= 0],
%%    Odd = [X || X<-L,X rem 2 =/=0],
%%    {Even,Odd}.

split(L)->
    split(L,[],[]).
split([H|L],Odd,Even) ->
    case H rem 2 =:=0  of
        true  -> split(L,Odd,[H|Even]);
        false -> split(L,[H|Odd],Even)
end;
split([],Odd,Even) ->
    {Even,Odd}.
