-- sneeuwvlokken-1.elm
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

type alias Model = {  }

init : Model
init = { naam = "X" }

------------------- VIEW -----------------------------

view model =
  div []
    [
      div [ ] [ text "Hoi, "  ]
    ]

------------------- UPDATE -----------------------------

update msg model =
  model
