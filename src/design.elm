module Design exposing (view)

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


view : Model -> List (Svg a)
view model =
    [ rect [ width "10", height "10", fill "pink", transform ("rotate(" ++ (toString model.theta) ++ ")") ] []
    ]
