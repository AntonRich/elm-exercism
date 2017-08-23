module Accumulate exposing (..)


accumulate : (a -> a) -> List a -> List a
accumulate fn list =
    List.map fn list
