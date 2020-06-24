-- sneeuwvlokken-8 -- Teken een lijnstuk
module Main exposing(..)

import Browser
import Html exposing (div, text, input, button, Html)
import Html.Attributes exposing (placeholder, value)
import Html.Events exposing (onInput, onClick)
import String exposing (join, repeat)
import List exposing(map)
import Maybe
import Svg exposing (svg, polyline, g)
import Svg.Attributes exposing (..)

-------------- ALGEMENE DEFINITIES ------------------------

--------- TEKENEN --------

type alias Point = { x: Float, y: Float }

--================= SHOWTIME ==========================

main = Browser.sandbox { init = myinit, view = myview, update = myupdate }

------------------- MODEL -----------------------------

type alias Model = { naam: String, aantal: Int  }

myinit : Model
myinit = { naam = "Klaas", aantal = 3 }

------------------- VIEW -----------------------------

myview: Model -> Html Msg
myview model =
  let
    plaatje = [ polyline [ stroke "blue", points "10, 10 30, 30" ] [ ] ]
  in
  div []
    [
        div [ ] [ Html.b [] [ text (repeat model.aantal "Hoi, ")], text model.naam  ]
      , input [ placeholder "uw naam",  onInput Naam ] [ ]
      , button [ onClick Meer ] [ text "MEER" ]
      , svg [ viewBox "0 0 400 400", width "800px"]
        [ Svg.g [ ] plaatje ]
    ]

------------------- UPDATE -----------------------------

type Msg
  = Naam String
  | Meer

myupdate: Msg -> Model -> Model
myupdate msg model =
  case msg of
    Naam n -> { model | naam = n }
    Meer   -> { model | aantal = model.aantal + 1 }
