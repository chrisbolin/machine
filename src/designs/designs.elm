module Designs exposing (designs)

import Array exposing (Array, fromList)
import One
import Model exposing (Model)
import Svg exposing (Svg)


designs : Array (Model -> List (Svg a))
designs =
    fromList
        [ One.design
        ]
