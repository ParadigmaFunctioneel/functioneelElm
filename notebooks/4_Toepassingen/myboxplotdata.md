
<p>Je gaat een functie <strong>boxplotdata</strong> maken.&nbsp; Deze functie <strong>boxplotdata</strong> heeft als invoer een String met getallen gescheiden door komma&rsquo;s en als uitvoer&nbsp; een List van Floats met getallen gescheiden door komma&rsquo;s op basis waarvan je een boxplot kunt tekenen. &nbsp;Je gebruikt de functie <strong>boxplotdata </strong>later om&nbsp; een boxplot te tekenen.</p>

<p>Start het elm programma <a href="http://goloca.org:443/examples/boxplotdata.elm">boxplotdata.elm</a>. Vul in het vakje links boven het volgende in:</p>

<p>7,3,8,6,8,5,4,5,3,6,2,6,9,1,2,7,5,8,7,6</p>

<p>Als uitkomst zie je nu een lijst met de gegevens voor de boxplot. Hierin staan achtereenvolgens:</p>

<ul>
	<li>kleinste getal</li>
	<li>eerste quartiel</li>
	<li>tweede quartiel (mediaan)</li>
	<li>derde quartiel</li>
	<li>grootste getal</li>
</ul>

<p>Run het elm programma <strong>myboxplotdata.elm</strong> in de volgende cell. Elm geeft als foutmelding dat de functie <strong>boxplotdata</strong> ontbreekt. Dat klopt want dat is nu juist de functie die je zelf moet schrijven.</p>

<p>Voeg de functie <strong>boxplotdata &nbsp;</strong>toe aan <strong>myboxplotdata.elm</strong>. Deze functie <strong>boxplotdata</strong> heeft als invoer een String en als uitvoer een&nbsp; lijst van Floats op basis waarvan je een boxplot kunt tekenen. In deze lijst staan achtereenvolgens het kleinste getal, het eerste kwartiel, het tweede kwartiel(mediaan), het derde kwartiel en het grootste getal.</p>

<p>Je kunt dit als volgt aanpakken.&nbsp; Maak met split een lijst van de String die je als invoer krijgt. Zet deze lijst van Strings om naar een lijst van Floats en sorteer deze lijst. Maak van deze lijst een Array. Je kunt nu op basis van dit Array de kleinste een de grootste bepalen. Schrijf aparte functies om op basis van het Array het eerste, tweede en derde kwartiel te bepalen.&nbsp; Zet de resultaten in een lijst van Floats en geef deze terug.</p>


```elm
import Html exposing (text, div, input, Attribute)
import Html exposing (beginnerProgram)
import Html.Events exposing (on, keyCode, onInput)
import Json.Decode as Json
import String exposing(..)
import List exposing(..)
import Array exposing(..)
import Maybe exposing(..)

checkedStringToFloat : String -> Float
checkedStringToFloat s =
    Result.withDefault 0 (String.toFloat s)

listStringToListFloat : List String -> List Float
listStringToListFloat ls =
    List.map checkedStringToFloat ls

mergesort : List comparable -> List comparable
mergesort list =
  case list of
    [] ->
        list

    [_] ->
        list

    _ ->
        let
          (xs, ys) = divide list
        in
          merge (mergesort xs) (mergesort ys)
divide : List a -> (List a, List a)
divide list =
  case list of
    [] ->
        ([], [])

    x :: rest ->
        let
          (xs, ys) = divide rest
        in
          (ys, x :: xs)

merge : List comparable -> List comparable -> List comparable
merge xs ys =
  case (xs, ys) of
    (x :: xBack, y :: yBack) ->
        if x < y then
          x :: merge xBack ys
        else
          y :: merge xs yBack

    ([], rest) ->
        rest

    (rest, []) ->
        rest

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
    , div [] [ text (toString model.outputData) ]
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
        { model | outputData = boxplotdata model.inputData }
      else
        model

    Input text ->
      { model | inputData = text }
      
-- insert your code here
boxplotdata : String -> List Float

-- compile-code
```



