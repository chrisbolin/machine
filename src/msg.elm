module Msg exposing (Msg(..))

import Keyboard exposing (KeyCode)


type Msg
    = KeyDown KeyCode
    | Tick Float
