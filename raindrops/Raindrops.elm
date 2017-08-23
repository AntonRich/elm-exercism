module Raindrops exposing (..)


raindrops : Int -> String
raindrops num =
    let
        pling n =
            if n % 3 == 0 then
                "Pling"
            else
                ""

        plang n =
            if n % 5 == 0 then
                "Plang"
            else
                ""

        plong n =
            if n % 7 == 0 then
                "Plong"
            else
                ""

        factorOf : Int -> Int -> Bool
        factorOf num factor =
            num % factor == 0
    in
        if List.any (factorOf num) [ 3, 5, 7 ] then
            (pling num) ++ (plang num) ++ (plong num)
        else
            toString num
