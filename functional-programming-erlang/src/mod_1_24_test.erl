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

bit_test() -> ?assert(mod_1_24:bits(7) =:= 3).
bit1_test() -> ?assert(mod_1_24:bits(8) =:= 1).
bit2_test() -> ?assert(mod_1_24:bits(1) =:= 1).

