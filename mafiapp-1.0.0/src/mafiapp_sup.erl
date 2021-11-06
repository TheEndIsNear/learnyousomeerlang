-module(mafiapp_sup).
-behaviour(supervisor).
-export([start_link/1]).
-export([init/1]).

start_link(Tables) ->
    supervisor:start_link(?MODULE, Tables).

%% This does absolutely nothing, only there to
%% allow waiting for tables.
init(_Tables) ->
    {ok, {{one_for_one, 1, 1}, []}}.
