module Subscriptions exposing (subscriptions)

import AnimationFrame exposing (diffs)
import Keyboard exposing (KeyCode, downs)
import Model exposing (Model)
import Msg exposing (Msg(Tick, KeyDown))


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ downs KeyDown
        , diffs Tick
        ]
