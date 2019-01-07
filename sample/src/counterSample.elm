import Browser
import Html exposing (..)
import Html.Events exposing (onClick)
--import Css exposing (..)

main =
  Browser.sandbox { init = 0, update = update, view = view }


-- MODEL

type alias Model = Int

init : Model
init =
  0


-- UPDATE
-- 状態を更新する方法

type Msg = Increment | Decrement | Reset

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

    Reset ->
      0


-- VIEW
-- HTML、見た目

view : Model -> Html Msg
view model =
  div []
    [ h1 [] [ text "aaaa" ]
    , button [ onClick Increment ] [ text "+"]
    --, div [class "text", id "test"] [ text (String.fromInt model) ]
    , button [ onClick Decrement ] [ text "-" ]
    , div [] []
    , button [ onClick Reset ] [ text "Reset" ]
    ]