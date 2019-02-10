import Browser
import Html exposing (Html, a, button, div, footer, header, img, nav, node, p, text)
import Html.Attributes exposing (height, href, src, width)

appendYas: String -> String
appendYas string = string ++ " YASSSSS."

-- VIEW
view =
  node "body" []
    [ header []
      [ img [ src "./src/img/logo.png", width 80, height 80 ] []
        -- , nav []
        -- [ text "home"
        --   , text "about"
        --   , text "contact"
        -- ]
      ]
    , div []
    [ p [] [ text "hi." ]
      , p [] [ text ( appendYas "I really like Elm and I am learning it." ) ]
      , p [] [ text "We try too hard to be perfect and to make everything look good." ]
      , p [] [ text "This is going to be a weird, ugly, brutalist site." ]
      , p [] [ text "The logo was generated using "
        , a [ href "https://hatchful.shopify.com" ] [ text "Hatchful" ]
        , text "."
      ]
      , button [ ] [ text "This does nothing." ]
      , p [] []
    ]
    , footer [] [ text "© 2019 zky829" ]
    ]

main =
    view
