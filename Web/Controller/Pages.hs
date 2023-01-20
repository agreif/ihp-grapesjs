module Web.Controller.Pages where

import Web.Controller.Prelude
import Web.View.Pages.Index
import Web.View.Pages.New
import Web.View.Pages.Edit
import Web.View.Pages.Show

instance Controller PagesController where
    action PagesAction = do
        pages <- query @Page |> fetch
        render IndexView { .. }

    action NewPageAction = do
        let page = newRecord
        render NewView { .. }

    action ShowPageAction { pageId } = do
        page <- fetch pageId
        render ShowView { .. }

    action EditPageAction { pageId } = do
        page <- fetch pageId
        render EditView { .. }

    action UpdatePageAction { pageId } = do
        page <- fetch pageId
        page
            |> buildPage
            |> ifValid \case
                Left page -> render EditView { .. }
                Right page -> do
                    page <- page |> updateRecord
                    setSuccessMessage "Page updated"
                    redirectTo EditPageAction { .. }

    action CreatePageAction = do
        let page = newRecord @Page
        page
            |> buildPage
            |> ifValid \case
                Left page -> render NewView { .. } 
                Right page -> do
                    page <- page |> createRecord
                    setSuccessMessage "Page created"
                    redirectTo PagesAction

    action DeletePageAction { pageId } = do
        page <- fetch pageId
        deleteRecord page
        setSuccessMessage "Page deleted"
        redirectTo PagesAction

buildPage page = page
    |> fill @'["content"]
