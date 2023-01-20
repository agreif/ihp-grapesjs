module Web.Types where

import IHP.Prelude
import IHP.ModelSupport
import Generated.Types

data WebApplication = WebApplication deriving (Eq, Show)


data StaticController = WelcomeAction deriving (Eq, Show, Data)
data GrapesController
  = DemoAction
  deriving (Eq, Show, Data)

data PagesController
    = PagesAction
    | NewPageAction
    | ShowPageAction { pageId :: !(Id Page) }
    | CreatePageAction
    | EditPageAction { pageId :: !(Id Page) }
    | UpdatePageAction { pageId :: !(Id Page) }
    | DeletePageAction { pageId :: !(Id Page) }
    deriving (Eq, Show, Data)
