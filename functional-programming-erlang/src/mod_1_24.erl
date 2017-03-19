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
-export([perimeter/1, area/1, enclose/1, bits/1]).

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
  H = triangle_height(A, B, C),
  H * B / 2.

%%
% Enclose
%%
enclose({circle, {R} }) -> {rectangle, {2*R, 2*R}};
enclose({rectangle, {A, B}}) -> {rectangle, {A, B}};
enclose({square, {A}}) -> {rectangle, {A, A}};
enclose({triangle, {A, B, C} }) ->
  H = triangle_height(A, B, C),
  {rectangle, {H, B}}.

%%
% Bits
%%
bits(N) -> bits(N, 0).
bits(0, A) -> A;
bits(N, A) when N > 0 -> bits(N div 2, A + (N rem 2) ).


%%
% Helpers
%%

triangle_height(A, B, C) ->
  D = math:pow((B*B + C*C - A*A) / (2 * B), 2),
  math:sqrt(C*C - D).