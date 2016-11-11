%%%-------------------------------------------------------------------
%% @doc erlpaystack public API
%% @end
%%%-------------------------------------------------------------------

-module(erlpaystack_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    erlpaystack_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
