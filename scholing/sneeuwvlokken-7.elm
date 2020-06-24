-- sneeuwvlokken-7 button met update
module Main exposing(..)

import Browser
import Html exposing (div, text, input, button, Html)
import Html.Attributes exposing (placeholder, value)
import Html.Events exposing (onInput, onClick)
import String exposing (join, repeat)
import List exposing(map)
import Maybe
import Svg exposing (svg, g, polyline)
import Svg.Attributes exposing (..)

-------------- ALGEMENE DEFINITIES ------------------------


--================= SHOWTIME ==========================

main = Browser.sandbox { init = myinit, view = myview, update = myupdate }

------------------- MODEL -----------------------------

type alias Model = { naam: String, aantal: Int  }

myinit : Model
myinit = { naam = "Klaas", aantal = 3 }

------------------- VIEW -----------------------------

myview: Model -> Html Msg
myview model =
  div []
    [
        div [ ] [ Html.b [] [ text (repeat model.aantal "Hoi, ")], text model.naam  ]
      , input [ placeholder "uw naam",  onInput Naam ] [ ]
      , button [ ] [ text "MEER" ]
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
