-- sneeuwvlokken-2  -- use the model in the view
module Main exposing(..)

import Browser
import Html exposing (text, div, input, Attribute)
import Html.Attributes exposing (placeholder, value)
import Html.Events exposing (onInput)
import String exposing (join)
import List exposing(..)
import Maybe
import Svg exposing (svg, g, polyline)
import Svg.Attributes exposing (..)

-------------- ALGEMENE DEFINITIES ------------------------


--================= SHOWTIME ==========================

main = Browser.sandbox { init = init, view = view, update = update }

------------------- MODEL -----------------------------

type alias Model = { naam: String  }

init : Model
init = { naam = "Klaas" }

------------------- VIEW -----------------------------

view model =
  div []
    [
      div [ ] [ text ("Hoi, " ++ model.naam) ]
    ]

------------------- UPDATE -----------------------------

update msg model =
  model
