module Web.View.Pages.Index where
import Web.View.Prelude

data IndexView = IndexView { pages :: [Page]  }

instance View IndexView where
    html IndexView { .. } = [hsx|
        {breadcrumb}

        <h1>Index<a href={pathTo NewPageAction} class="btn btn-primary ms-4">+ New</a></h1>
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>Page</th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>{forEach pages renderPage}</tbody>
            </table>
            
        </div>
    |]
        where
            breadcrumb = renderBreadcrumb
                [ breadcrumbLink "Pages" PagesAction
                ]

renderPage :: Page -> Html
renderPage page = [hsx|
    <tr>
        <td>{page}</td>
        <td><a href={ShowPageAction page.id}>Show</a></td>
        <td><a href={EditPageAction page.id} class="text-muted">Edit</a></td>
        <td><a href={DeletePageAction page.id} class="js-delete text-muted">Delete</a></td>
    </tr>
|]