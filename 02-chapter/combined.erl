-module(combined).
-export([height_to_mph/1]).
-import(drop, [fall_velocity/1]).
-import(convert, [mps_to_mph/1]).

%%%
%%% code originally ran as:
%%% height_to_mph(Meters) -> convert:mps_to_mph(drop:fall_velocity(Meters)).

%%% But now it will be a little more streamlined.
height_to_mph(Meters) -> mps_to_mph(fall_velocity(Meters)).

%%% although, the book says, "...it's probably best to know about the -import
%%% directive so you can read other people's code, but not to use it unless you
%%% just can't resist. It can make it harder to figure where bugs are coming
%%% from, which may cost you more time than the extra typing." Curiously,
%%% import lines in GoLang don't really save you from having to do the extra
%%% typing, but you can't use other modules without such import lines. I wonder
%%% which is better. I can imagine it being unclear what modules one is using
%%% in Erlang. hm.
