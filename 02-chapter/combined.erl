-module(combined).
-export([height_to_mph/1]).
-import(drop, [fall_velocity/1]).
-import(convert, [mps_to_mph/1]).

%% Author: William Z Chadwick
%% Date Created: 02/22/2025
%% Date Modified: 02/22/2025
%% Description:
%% This code is based on the book, Introducing Erlang, by @author Simon St.Laurent <simonstl@simonstl.com> [httpL//simonstl.com]
%% These initial comments are similar to (based on) his comments in the book on page 21.
%% @doc Functions calculating velocities achieved by objects dropped in a vacuum.
%% @reference from <a href "http://shop/oreilly.com/product/0636920025818.do" >Introducing Erlang</a>,
%% O'Reilly Media, Inc., 2012.
%% @copyright 2012 by Simon St.Laurent
%% @version 0.1

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
