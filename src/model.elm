port module Model exposing (Model, initialModel)


type alias Model =
    { intervalLengthMs : Float
    , theta : Int
    }


initialModel : Model
initialModel =
    { intervalLengthMs = 0
    , theta = 4
    }
