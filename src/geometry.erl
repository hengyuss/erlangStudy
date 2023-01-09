%%%-------------------------------------------------------------------
%%% @author 11836
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. 1月 2023 20:37
%%%-------------------------------------------------------------------
-module(geometry).
-author("11836").

%% API
-export([calculate_area/1]).

calculate_area({square, Side}) -> {square, Side * Side};
calculate_area({rectangle, Height, Width}) -> {rectangle, Height * Width};
calculate_area({right_triangle, Height, Width}) -> {right_triangle, (Height * Width) / 2};
calculate_area({round, Radius}) -> {round, 3.14159 * Radius * Radius}.



