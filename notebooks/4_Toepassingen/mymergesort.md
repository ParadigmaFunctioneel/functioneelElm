
<p>Je gaat een recursie functie <strong>mergesort</strong> maken.&nbsp; Deze functie <strong>mergesort</strong> heeft als invoer een lijst en als uitvoer een gesorteerde lijst. Je gebruikt de functie <strong>mergesort</strong> later om de gegevens voor een boxplot te bepalen. Start het elm programma <a href="http://goloca.org:443/examples/mergesort.elm">mergesort.elm</a>. Vul in het vakje links boven het volgende in:</p>

<p>7,3,8,6,8,5,4,5,3,6,2,6,9,1,2,7,5,8,7,6</p>

<p>Als uitkomst zie je nu een gesorteerde lijst.</p>

<p>Run het elm programma <strong>mymergesort.elm</strong> in de volgende cell. Elm geeft als foutmelding dat de functie <strong>mergesort</strong> ontbreekt. Dat klopt want dat is nu juist de functie die je zelf moet schrijven.</p>

<p>Voeg de functie <strong>mergesort</strong> toe aan <strong>mymergesort.elm</strong>. Op de site elm-lang.org vind je bij Examples een voorbeeld van een mergesort functie.</p>

<p>Je moet deze als volgt aanpassen:</p>

<ul>
	<li>Verander de naam van de functie split in divide</li>
</ul>

<p>Bekijk ook de functies <strong>checkedStringToFloat</strong> en <strong>listStringToListFloat</strong>.</p>

<p>De functie <strong>checkedStringToFloat </strong>heeft als input een String en geeft als output een Float terug.&nbsp; Als&nbsp; de String niet omgezet kan worden geeft de functie 0 terug.</p>

<p>De functie <strong>listStringToListFloat </strong>heeft als input een List van Strings en geeft als output een List van Floats terug. Daarbij maakt de functie gebruik van de standaard elm functie map. Deze functie past een functie die als parameter meegegeven wordt toe op alle elementen in een als parameter meegegeven List. In dit geval is dit de functie <strong>checkedStringToFloat</strong>.</p>



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

main =
  beginnerProgram 
  { model = 
    { outputData = []
    , inputData = ""
    }
  , view = view
  , update = update
  }

view model =
  div [] 
  [ input [onKeyDown KeyDown, onInput Input] []
  , div [] [ text ("Result: " ++ toString model.outputData) ]
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
        { model | outputData = (mergesort (listStringToListFloat(split "," model.inputData))) }
      else
        model

    Input text ->
      { model | inputData = text }
      
-- insert your code here
mergesort : List comparable -> List comparable

-- compile-code
```

