%%%-------------------------------------------------------------------
%%% @author Keyki
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. Март 2017 14:21
%%%-------------------------------------------------------------------
-module(mod_1_24_test).
-author("Keyki").

-include_lib("eunit/include/eunit.hrl").

%% API
-export([]).

bits_test_() ->
  [
    ?_assertEqual(mod_1_24:bits(8), 1),
    ?_assertEqual(mod_1_24:bits(0), 0),
    ?_assertEqual(mod_1_24:bits(1), 1),
    ?_assertEqual(mod_1_24:bits(7), 3)
  ].

area_test_() ->
  [
    ?_assertEqual(mod_1_24:area({circle, {5}}), 78.53981633974483),
    ?_assertEqual(mod_1_24:area({circle, {7}}), 153.93804002589985),
    ?_assertEqual(mod_1_24:area({square, {7}}), 49),
    ?_assertEqual(mod_1_24:area({triangle, {2.2, 3, 3.2}}), 3.174901573277509),
    ?_assertEqual(mod_1_24:area({rectangle, {4, 5}}), 20)
  ].

perimeter_test_() ->
  [
    ?_assertEqual(mod_1_24:perimeter({circle, {5}}), 31.41592653589793),
    ?_assertEqual(mod_1_24:perimeter({circle, {7}}), 43.982297150257104),
    ?_assertEqual(mod_1_24:perimeter({square, {7}}), 28),
    ?_assertEqual(mod_1_24:perimeter({rectangle, {4, 5}}), 18),
    ?_assertEqual(mod_1_24:perimeter({triangle, {2.2, 3, 3.2}}), 8.4)
  ].

enclose_test_() ->
  [
    ?_assertEqual(mod_1_24:enclose({circle, {5}}), {rectangle, {10, 10}}),
    ?_assertEqual(mod_1_24:enclose({circle, {7}}), {rectangle, {14, 14}}),
    ?_assertEqual(mod_1_24:enclose({rectangle, {7, 8}}), {rectangle, {7, 8}}),
    ?_assertEqual(mod_1_24:enclose({square, {7}}), {rectangle, {7, 7}}),
    ?_assertEqual(mod_1_24:enclose({triangle, {2.2, 3, 3.2}}), {rectangle, {2.1166010488516727, 3}})
  ].
