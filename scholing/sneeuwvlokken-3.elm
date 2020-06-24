-- sneeuwvlokken-3 -- repeat greeting
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

type alias Model = { naam: String, aantal: Int  }

init : Model
init = { naam = "Klaas", aantal = 3 }

------------------- VIEW -----------------------------

view model =
  let groet = String.repeat model.aantal "Hoi, " in
  div []
    [
      div [ ] [ text (groet ++ model.naam) ]
    ]

------------------- UPDATE -----------------------------

update msg model =
  model
