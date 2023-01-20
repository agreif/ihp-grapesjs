module Web.Controller.Grapes where

import Web.Controller.Prelude
import Web.View.Grapes.Index
import Web.View.Layout

instance Controller GrapesController where
  beforeAction = do
    setLayout grapesLayout

  action GrapesAction = render IndexView
