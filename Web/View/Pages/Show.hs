module Web.View.Pages.Show where
import Web.View.Prelude

data ShowView = ShowView { page :: Page }

instance View ShowView where
    html ShowView { .. } = [hsx|
        {breadcrumb}
        <h1>Show Page</h1>
        <p>{page}</p>

    |]
        where
            breadcrumb = renderBreadcrumb
                            [ breadcrumbLink "Pages" PagesAction
                            , breadcrumbText "Show Page"
                            ]