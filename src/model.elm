module Model exposing (Model, initialModel)


type alias Model =
    { intervalLengthMs : Float
    , t : Int
    }


initialModel : Model
initialModel =
    { intervalLengthMs = 0
    , t = 0
    }
