module Web.View.Grapes.Demo where

import Web.View.Prelude

data DemoView = DemoView

instance View DemoView where
    html DemoView = [hsx|
                         GGG
|]
