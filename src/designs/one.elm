module One exposing (design)

import List exposing (concat, repeat, indexedMap)
import Svg exposing (Svg, svg, circle, rect, g)
import Svg.Attributes
    exposing
        ( viewBox
        , width
        , stroke
        , fill
        , height
        , transform
        , x
        , y
        , cx
        , cy
        , r
        )
import Model exposing (Model)


background : Svg a
background =
    rect [ width "100", height "100", fill "black" ] []


element : Int -> Model -> Svg b
element j model =
    let
        x1 =
            toFloat ((j * 10) % 100) + 0.5

        y1 =
            toFloat (((j * 10) // 100) * 10) + 0.5

        hue =
            (model.t + j * 30) % 360

        thetaR =
            (toFloat model.t) * 0.5

        rotation =
            toString thetaR ++ " 50 50"
    in
        rect
            [ width "9"
            , height "9"
            , fill ("hsl(" ++ (toString hue) ++ ", 100%, 70%)")
            , x (toString x1)
            , y (toString y1)
            , transform
                ("rotate("
                    ++ rotation
                    ++ ")"
                )
            ]
            []


elements : Model -> List (Svg a)
elements model =
    indexedMap element (repeat 100 model)


design : Model -> List (Svg a)
design model =
    concat
        [ [ background ]
        , elements model
        ]
