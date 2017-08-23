module Bob exposing (..)

import Regex exposing (..)


hey : String -> String
hey str =
    let
        hasLetter str =
            Regex.contains (regex "[a-zA-z]") str

        isShout str =
            Regex.contains (regex "[A-Z]") str && not (Regex.contains (regex "[a-z]") str)

        isSilence str =
            String.trim str == ""

        isNonsense str =
            not (hasLetter str)

        isQuestion str =
            String.endsWith "?" str && not (isShout str)

        allCaps str =
            String.toUpper str == str
    in
        if isSilence str then
            "Fine. Be that way!"
        else if isQuestion str then
            "Sure."
        else if isNonsense str then
            "Whatever."
        else if allCaps str then
            "Whoa, chill out!"
        else
            "Whatever."
