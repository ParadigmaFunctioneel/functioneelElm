-- sneeuwvlokken-4  -- message type
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

myview: Model -> Html msg
myview model =
  let groet = String.repeat model.aantal "Hoi, " in
  div []
    [
        div [ ] [ Html.b [] [ text groet], text model.naam  ]
      , input [ placeholder "gewenst aantal" ] [ ]
    ]

------------------- UPDATE -----------------------------

type Msg = Nada

myupdate: Msg -> Model -> Model
myupdate msg model =
  model
