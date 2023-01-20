module Web.View.Pages.New where
import Web.View.Prelude

data NewView = NewView { page :: Page }

instance View NewView where
    html NewView { .. } = [hsx|
        {breadcrumb}
        <h1>New Page</h1>
        {renderForm page}
    |]
        where
            breadcrumb = renderBreadcrumb
                [ breadcrumbLink "Pages" PagesAction
                , breadcrumbText "New Page"
                ]

renderForm :: Page -> Html
renderForm page = formFor page [hsx|
    {(textField #content)}
    {submitButton}

|]