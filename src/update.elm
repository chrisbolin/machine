module Update exposing (update)

import Model exposing (Model)
import Msg exposing (Msg(Tick, KeyDown))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Tick intervalLengthMs ->
            ( interate { model | intervalLengthMs = intervalLengthMs }, Cmd.none )

        KeyDown code ->
            case code of
                _ ->
                    ( model, Cmd.none )


interate : Model -> Model
interate model =
    { model | t = model.t + 1 }
