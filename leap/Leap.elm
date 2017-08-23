module Leap exposing (..)


isLeapYeark : Int -> Bool
isLeapYeark year =
    let
        divisibleBy n y =
            rem y n == 0
    in
        (divisibleBy 4 year) && (not (divisibleBy 100 year) || (divisibleBy 400 year))


isLeapYear : Int -> Bool
isLeapYear year =
    let
        divisibleBy n y =
            rem y n == 0
    in
        xor (divisibleBy 4 year) (divisibleBy 100 year) || (divisibleBy 400 year)
