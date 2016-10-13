module View exposing (view)

import Html exposing (Html, div, text)
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
import Design


view : Model -> Html Msg
view model =
    div []
        [ svg [ viewBox "0 0 100 100", width "100%" ] (Design.view model) ]
