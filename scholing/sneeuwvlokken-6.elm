-- sneeuwvlokken-6 naam via input -> message -> update
module Main exposing(..)

import Browser
import Html exposing (Html, text, div, input, Attribute)
import Html.Attributes exposing (placeholder, value)
import Html.Events exposing (onInput)
import String exposing (join)
import List exposing(..)
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
        div [ ] [ Html.b [] [ text (String.repeat model.aantal "Hoi, ")], text model.naam  ]
      , input [ placeholder "uw naam",  onInput Naam ] [ ]
    ]

------------------- UPDATE -----------------------------

type Msg = Naam String

myupdate: Msg -> Model -> Model
myupdate msg model =
  case msg of
    Naam n -> { model | naam = n }
