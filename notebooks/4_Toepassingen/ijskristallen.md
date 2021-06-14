
<h2>We gaan een eigen ijskristal maken:</h2>

<p>Zoek op het internet plaatjes van ijskristallen zodat je weet hoe deze er uit zien.</p>

<p>Start het elm programma <a href="http://goloca.org:443/examples/ijskristal.elm">ijskristal.elm</a>. Je ziet het volgende:</p>

![elmex3.1.png](attachment:elmex3.1.png)

<p>In het vakje kun je invoeren hoeveel maal het ijskristal verdeeld moet worden. Voer 4 in. Je ziet het volgende:</p>

![elmex3.2.png](attachment:elmex3.2.png)

<h2>Hoe gaan we een ijskrinstallen maken</h2>

<p>In de cell hieronder staat het bestand <strong>myijskristallen.elm</strong>. Deze&nbsp; code staat in het view model daarvan.</p>

<p>&nbsp; &nbsp; &nbsp;&nbsp; path =</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; [ koch startP1 startP2 model.passes []</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; , koch startP2 startP3 model.passes []</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; , koch startP3 startP1 model.passes []</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; ]</p>

<p>In deze regel worden de punten voor de tekening in een lijst gezet&shy;&shy;&shy;. Dit gebeurt door 3 lijnen te bepalen en deze verder te bewerken zoals je hier ziet:</p>

![elmex3.3.png](attachment:elmex3.3.png)

<p>Daarvoor wordt de functie <strong>koch</strong> aangeroepen met als parameters:</p>

<ul>
	<li>Het startpunt van de lijn</li>
	<li>Het eindpunt van de lijn</li>
	<li>Het aantal stappen waarin de lijn bewerkt wordt</li>
	<li>De lijst van punten die tot en met deze stap bepaald zijn</li>
</ul>

<p>In <strong>kock</strong> worden de drie nieuwe punten <strong>p1</strong>, <strong>p2</strong> en <strong>p3</strong> berekend om de lijn kunnen te tekenen.</p>

![elmex3.4.png](attachment:elmex3.4.png)

<p>Het begin en het eind punt heten binnen <strong>koch</strong> <strong>a</strong> en <strong>b</strong>. Het begin en eindpunt worden als parameters meegegeven.</p>

<p>Als het aantal stappen niet meer dan 1 is geeft de functie <strong>koch</strong> het volgende terug:</p>

<p>a :: p1 :: p2 :: p3 :: b :: points</p>

<p>Als het aantal stappen meer dan 1 is roept roep de functie <strong>koch</strong> zichzelf 4 keer aan met als te bewerken lijnen:</p>

<ul>
	<li>De lijn tussen de punten <strong>a</strong> en <strong>p1</strong></li>
	<li>De lijn tussen de puntern <strong>p1</strong> en <strong>p2</strong></li>
	<li>De lijn tussen de punten <strong>p2</strong> en <strong>p3</strong></li>
	<li>De lijn tussen de punten <strong>p3 </strong>en <strong>b</strong></li>
</ul>

<p>Bij deze aanroepen verlaagt <strong>koch</strong> het aantal stappen met 1. Alle resulterende lijsten van deze 4 aanroepen zet <strong>koch</strong> in een gezamenlijke lijst en geeft deze terug.</p>

<h2>Opdracht</h2>
<p>Maak je eigen ijskristal door de code van <strong>ijskristallen.elm</strong> in de volgende cell aan te passen.</p>


```elm
import Html exposing (text, div, input, Attribute)
import Browser exposing (sandbox)
import Html.Events exposing (on, keyCode, onInput)
import Html.Attributes exposing(..)
import Json.Decode as Json
import String exposing(split)
import List exposing(..)
import Maybe exposing(..)
import Svg exposing (..)
import Svg.Attributes exposing (..)

type alias Point =
    { x : Float
    , y : Float
    }


koch : Point -> Point -> Int -> List Point -> List Point
koch a b limit points =
    let
        ( dx, dy ) =
            ( b.x - a.x, b.y - a.y )

        dist =
            dx * dx + dy * dy |> sqrt

        unit =
            dist / 3

        angle =
            atan2 dy dx

        p1 =
            Point (a.x + dx / 3) (a.y + dy / 3)

        p2 =
            Point
                (p1.x
                    + (cos (angle - pi / 3))
                    * unit
                )
                (p1.y
                    + (sin (angle - pi / 3))
                    * unit
                )

        p3 =
            Point (b.x - dx / 3) (b.y - dy / 3)
    in
        if limit > 1 then
            let
                l =
                    limit - 1
            in
                List.concat
                    [ points
                    , koch a p1 l points
                    , koch p1 p2 l points
                    , koch p2 p3 l points
                    , koch p3 b l points
                    ]
        else
            a :: p1 :: p2 :: p3 :: b :: points


startP1 : Point
startP1 =
    Point 0 -150

startP2 : Point
startP2 =
    Point 150 100


startP3 : Point
startP3 =
    Point -150 100

pointsListToString: List Point -> String
pointsListToString l =

   if List.isEmpty l then
       ""
   else
      let
        h = withDefault (Point 0 0) (head (take 1 l))
      in
        (String.fromFloat h.x) ++ "," ++ (String.fromFloat h.y) ++ " " ++ (pointsListToString (drop 1 l))

main = Browser.sandbox { init = init, update = update, view = view }

type alias Model = { content : String }

init : Model
init = { content = "1" }

view model =
   let
        path =
            pointsListToString (koch startP1 startP2 (Maybe.withDefault 1 (String.toInt model.content)) []) ++ pointsListToString (koch startP2 startP3 (Maybe.withDefault 1 (String.toInt model.content)) []) ++ pointsListToString (koch startP3 startP1 (Maybe.withDefault 1 (String.toInt model.content)) [])
   in
        div []
          [ input [ placeholder "numbers separated by ,", value model.content, onInput Change ] []
          , svg [ viewBox "0 0 200 200", Svg.Attributes.width "400px" ]

           [ g [ transform "translate(100, 100) scale(0.5,-0.5)" ]

                 [
                    polyline [ fill "none", stroke "black", points path] []

                ]

           ]
          ]

type Msg
  = Change String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent ->
        { model | content = newContent }
-- compile-code
```


<div id="elm-div-6"></div>
