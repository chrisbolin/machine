module View exposing (view)

import Html exposing (Html, div, text)
import Html.Attributes exposing (id)
import Svg exposing (Svg, svg, circle, rect, g)
import Svg.Attributes
    exposing
        ( viewBox
        , width
        , stroke
        , fill
        , height
        , transform
        )
import Model exposing (Model)
import Msg exposing (Msg)
import Design exposing (design)


view : Model -> Html Msg
view model =
    svg [ id "main-canvas", viewBox "0 0 100 100", width "100%" ] (design model)
