module Web.Controller.Grapes where

import Web.Controller.Prelude
import Web.View.Grapes.Demo
import Web.View.Layout

instance Controller GrapesController where
  beforeAction = do
    setLayout grapesLayout

  action demoAction = render DemoView
