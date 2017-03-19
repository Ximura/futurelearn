%%%-------------------------------------------------------------------
%%% @author Keyki
%%% @copyright (C) 2017
%%% @doc
%%%
%%% @end
%%% Created : 13 March 2017 23:12
%%%-------------------------------------------------------------------
-module(mod_1_24).
-author("Keyki").

%% API
-export([perimeter/1, area/1]).

%%
% Perimeter
%%
perimeter({circle, {R} }) -> 2 * math:pi() * R;
perimeter({triangle, {A, B, C} }) -> A + B + C;
perimeter({rectangle, {A, B}}) -> 2 * (A + B);
perimeter({square, {A}}) -> 4 * A.

%%
% Area
%%

area({circle, {R} }) -> math:pi() * R * R;
area({rectangle, {A, B}}) -> A * B;
area({square, {A}}) -> A * A;
area({triangle, {A, B, C} }) ->
  D = math:pow((B*B + C*C - A*A) / 2 * B, 2),
  H = math:sqrt(C*C - D),
  H * B / 2.
