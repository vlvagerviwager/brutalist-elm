import Browser
import Html exposing (Html, button, div, footer, p, text)

-- VIEW
view model =
  div []
    [ p [] [ text "hi." ]
    , p [] [ text "I really like Elm and I am learning it." ]
    , p [] [ text "We try to hard to be perfect and to make everything look good." ]
    , p [] [ text "This is going to be a weird, ugly, brutalist site." ]
    , button [ ] [ text "This does nothing." ]
    , p [] []
    , footer [] [ text "© 2019 zky829" ]
    ]

main =
    view "not a model"
