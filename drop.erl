-module(drop).
-export([fall_velocity/1, mps_to_mph/1, mps_to_kph/1]).

fall_velocity(distance) -> math:sqrt(2 * 9.8 * distance).

mps_to_mph(mps) -> 2.23693629 * mps.

mps_to_kph(mps) -> 3.6 * mps.
