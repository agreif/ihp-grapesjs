module Web.View.Pages.Edit where
import Web.View.Prelude

data EditView = EditView { page :: Page }

instance View EditView where
    html EditView { .. } = [hsx|
        {breadcrumb}
        <h1>Edit Page</h1>
        {renderForm page}
    |]
        where
            breadcrumb = renderBreadcrumb
                [ breadcrumbLink "Pages" PagesAction
                , breadcrumbText "Edit Page"
                ]

renderForm :: Page -> Html
renderForm page = formFor page [hsx|
    {(textField #content)}
    {submitButton}

|]