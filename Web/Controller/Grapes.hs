module Web.Controller.Grapes where

import Web.Controller.Prelude
import Web.View.Layout

import Web.View.Grapes.Demo

instance Controller GrapesController where
  beforeAction = do
    setLayout grapesLayout

  action demoAction = render DemoView
