
<p>Je gaat zelf een recursieve functie <strong>pow</strong> maken. Deze functie <strong>pow</strong> heeft als invoer twee getallen g en m en geeft als uitvoer g<sup>m</sup> (`g tot de macht m`). Je gebruikt de functie <strong>pow</strong> later om functies te bereken van de vorm y = ax<sup>2</sup> + bx + c. Daarom is de functie <strong>pow</strong> goed genoeg als je voor m alleen gehele positieve getallen mag gebruiken. De functie pow heeft als uitkomst een getal dat g<sup>m</sup> weergeeft.</p>

<p>Run het elm programma <strong>mypow.elm</strong> in de volgende cell. Elm geeft als foutmelding dat de functie <strong>pow</strong> ontbreekt. Dat klopt want dat is nu juist de functie die jij zelf moet schrijven.</p>

<p>Voeg de functie <strong>pow</strong> toe na <i>--insert your code here</i> volgens de volgende omschijving. Pow heeft als invoer twee getallen g en m. Daarvan is g het grondtal en m de macht. Pow geeft als resultaat g<sup>m</sup> terug.</p>

<p>Gebruik daarbij recursie volgens dit schema:</p>

![elmex2.2.png](attachment:elmex2.2.png)


```elm
import Html exposing (text, div, input, Attribute)
import Html exposing (beginnerProgram)
import Html.Events exposing (on, keyCode, onInput)
import Json.Decode as Json
import String exposing(..)
import List exposing(..)
import Maybe exposing(..)

checkedStringToFloat : String -> Float
checkedStringToFloat s =
    Result.withDefault 0 (String.toFloat s)

listStringToListFloat : List String -> List Float
listStringToListFloat ls =
    List.map checkedStringToFloat ls

powTest : String -> String
powTest s =
  let
    lf = listStringToListFloat (split "," s)
    g =
      withDefault 0 (head lf)
    m =
      withDefault 0 (head (withDefault [] (tail lf)))
  in
    toString (pow g m)

main =
  beginnerProgram
  { model =
    { outputData = ""
    , inputData = ""
    }
  , view = view
  , update = update
  }


view model =
  div []
  [ input [onKeyDown KeyDown, onInput Input] []
  , div [] [ text ("Result: " ++ model.outputData) ]
  ]

onKeyDown : (Int -> msg) -> Html.Attribute msg
onKeyDown tagger =
  on "keydown" (Json.map tagger keyCode)

type Msg
  = NoOp
  | KeyDown Int
  | Input String

update msg model =
  case msg of

    NoOp ->
      model

    KeyDown key ->
      if key == 13 then
        { model | outputData = powTest model.inputData }
      else
        model

    Input text ->
      { model | inputData = text }

-- insert your code here
pow : Float -> Int -> Float
-- compile-code
```
