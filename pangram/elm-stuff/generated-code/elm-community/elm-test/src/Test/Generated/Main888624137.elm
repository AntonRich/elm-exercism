module Test.Generated.Main888624137 exposing (main)

import Tests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test
import Json.Encode

main : Test.Runner.Node.TestProgram
main =
    [     Test.describe "Tests" [Tests.tests] ]
        |> Test.concat
        |> Test.Runner.Node.runWithOptions { runs = Nothing, report = (ConsoleReport UseColor), seed = Nothing, processes = 8, paths = []}