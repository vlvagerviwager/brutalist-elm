import Browser
import Html exposing (Html, a, button, div, footer, header, img, nav, node, p, text)
import Html.Attributes exposing (height, href, src, width)
import Html.Events exposing (onClick)


appendYas: String -> String
appendYas string = string ++ " YASSSSS."

main =
  Browser.sandbox { init = init, update = update, view = view }

-- MODEL

type alias Model = String

init : Model
init =
  "hi."

-- UPDATE

type Msg = Sunny | Rainy
update : Msg -> Model -> Model
update msg model =
  case msg of
    Sunny ->
      "hi."
    Rainy ->
      "ugh."

-- VIEW
view : Model -> Html Msg
view model =
  -- Replace with Browser.Document when it does more
  div []
    [ header []
      [ img [ src "./src/img/logo.png", width 80, height 80 ] []
        -- , nav []
        -- [ text "home"
        --   , text "about"
        --   , text "contact"
        -- ]
      ]
    , div []
    [ p [] [ text model ]
      , p [] [ text ( appendYas "I really like Elm and I am learning it." ) ]
      , p [] [ text "We try too hard to be perfect and to make everything look good." ]
      , p [] [ text "This is going to be a weird, ugly, brutalist site." ]
      , p [] [ text "The logo was generated using "
        , a [ href "https://hatchful.shopify.com" ] [ text "Hatchful" ]
        , text "."
      ]
      , button [ onClick Rainy ] [ text "This does nothing." ]
      , p [] []
    ]
    , footer [] [ text "© 2019 zky829" ]
    ]

