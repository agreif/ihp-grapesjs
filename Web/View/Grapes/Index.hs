module Web.View.Grapes.Index where

import Web.View.Prelude

data IndexView = IndexView

instance View IndexView where
    html IndexView = [hsx|
                         GGG
|]
