% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/card.R
\name{card}
\alias{card}
\alias{deck}
\title{Cards, blocks of content}
\usage{
card(..., header = NULL, footer = NULL)

deck(...)
}
\arguments{
\item{...}{For \strong{card}, \code{div()}s, tag elements, or list groups to include in
the card or additional named arguments passed as HTML attributes to the
card element.

For \strong{deck}, any number of \code{card()}s or additional named arguments passed
as HTML attributes to the parent element.}

\item{header}{A character string or tag element specifying the header of the
card, defaults to \code{NULL}, in which case a header is not added.}

\item{footer}{A character string or tag element specifying the footer of the
card, defaults to \code{NULL}, in which case a footer is not added.}
}
\description{
Create blocks of content with \code{card}. \code{deck} is used to group and add padding
is placed around any number of cards. Additionally, grouping cards with
\code{deck} has the benefit of aligning the footer of each card.
}
\details{
\subsection{A simple card}{

Cards expand to fill the width of their parent element.\if{html}{\out{<div class="r">}}\preformatted{card(
  p("Praesent fermentum tempor tellus.")
)
}\if{html}{\out{</div>}}\if{html}{\out{
<!--html_preserve-->
}}
\if{html}{\out{
<div class="r-output">
}}
\if{html}{\out{
<div class="card">
}}
\if{html}{\out{
<div class="card-body">
}}
\if{html}{\out{
<p class="card-text">
}}


Praesent fermentum tempor tellus.\if{html}{\out{
</p>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<!--/html_preserve-->
}}

}

\subsection{Contextual styles}{

Cards include contextual content. Headings 1 through 5 are styled as
main titles and heading 6 as a subtitle.\if{html}{\out{<div class="r">}}\preformatted{card(
  h5("Title"),
  h6("Subtitle"),
  p("Nullam tempus. Mauris mollis tincidunt felis."),
  p("Nullam libero mauris, consequat quis, varius et, dictum id, arcu."),
  footer = list(
    a(href = "#", "Link"),
    a(href = "#", "Link")
  )
)
}\if{html}{\out{</div>}}\if{html}{\out{
<!--html_preserve-->
}}
\if{html}{\out{
<div class="r-output">
}}
\if{html}{\out{
<div class="card">
}}
\if{html}{\out{
<div class="card-body">
}}
\if{html}{\out{
<h5 class="card-title">
}}


Title\if{html}{\out{
</h5>
}}
\if{html}{\out{
<h6 class="card-subtitle">
}}


Subtitle\if{html}{\out{
</h6>
}}
\if{html}{\out{
<p class="card-text">
}}


Nullam tempus. Mauris mollis tincidunt felis.\if{html}{\out{
</p>
}}
\if{html}{\out{
<p class="card-text">
}}


Nullam libero mauris, consequat quis, varius et, dictum id, arcu.\if{html}{\out{
</p>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<div class="card-footer">
}}


\if{html}{\out{<a href="#">}}Link\if{html}{\out{</a>}} \if{html}{\out{<a href="#">}}Link\if{html}{\out{</a>}}\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<!--/html_preserve-->
}}

}

\subsection{Styling cards}{

Cards can have different borders and fonts.\if{html}{\out{<div class="r">}}\preformatted{card(
  .style \%>\%
    border("info") \%>\%
    font("info"),
  header = "Donec pretium posuere tellus",
  p("Donec hendrerit tempor tellus."),
  p("Cras placerat accumsan nulla.")
)
}\if{html}{\out{</div>}}\if{html}{\out{
<!--html_preserve-->
}}
\if{html}{\out{
<div class="r-output">
}}
\if{html}{\out{
<div class="card border border-info text-info">
}}
\if{html}{\out{
<div class="card-header">
}}


Donec pretium posuere tellus\if{html}{\out{
</div>
}}
\if{html}{\out{
<div class="card-body">
}}
\if{html}{\out{
<p class="card-text">
}}


Donec hendrerit tempor tellus.\if{html}{\out{
</p>
}}
\if{html}{\out{
<p class="card-text">
}}


Cras placerat accumsan nulla.\if{html}{\out{
</p>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<!--/html_preserve-->
}}
\if{html}{\out{<div class="r">}}\preformatted{card(
  .style \%>\%
    border("danger") \%>\%
    font("danger"),
  p("Aliquam posuere."),
  p("Phasellus neque orci, porta a, aliquet quis, semper a, massa."),
  p("Pellentesque dapibus suscipit ligula.")
)
}\if{html}{\out{</div>}}\if{html}{\out{
<!--html_preserve-->
}}
\if{html}{\out{
<div class="r-output">
}}
\if{html}{\out{
<div class="card border border-danger text-danger">
}}
\if{html}{\out{
<div class="card-body">
}}
\if{html}{\out{
<p class="card-text">
}}


Aliquam posuere.\if{html}{\out{
</p>
}}
\if{html}{\out{
<p class="card-text">
}}


Phasellus neque orci, porta a, aliquet quis, semper a, massa.\if{html}{\out{
</p>
}}
\if{html}{\out{
<p class="card-text">
}}


Pellentesque dapibus suscipit ligula.\if{html}{\out{
</p>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<!--/html_preserve-->
}}


You can also change the background.\if{html}{\out{<div class="r">}}\preformatted{card(
  .style \%>\%
    background("warning"),
  header = "Phasellus lacus",
  p("Etiam laoreet quam sed arcu."),
  p("Etiam vel tortor sodales tellus ultricies commodo."),
  footer = "Nam euismod tellus id erat."
)
}\if{html}{\out{</div>}}\if{html}{\out{
<!--html_preserve-->
}}
\if{html}{\out{
<div class="r-output">
}}
\if{html}{\out{
<div class="card bg-warning">
}}
\if{html}{\out{
<div class="card-header">
}}


Phasellus lacus\if{html}{\out{
</div>
}}
\if{html}{\out{
<div class="card-body">
}}
\if{html}{\out{
<p class="card-text">
}}


Etiam laoreet quam sed arcu.\if{html}{\out{
</p>
}}
\if{html}{\out{
<p class="card-text">
}}


Etiam vel tortor sodales tellus ultricies commodo.\if{html}{\out{
</p>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<div class="card-footer">
}}


Nam euismod tellus id erat.\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<!--/html_preserve-->
}}

}

\subsection{Cards with list groups}{

Combine a list group with a card.\if{html}{\out{<div class="r">}}\preformatted{card(
  listGroupInput(
    id = NULL,
    flush = TRUE,
    choices = c(
      "Pellentesque tristique imperdiet tortor.",
      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
      "Phasellus purus."
    ),
    values = c(
      "choice1",
      "choice2",
      "choice3"
    )
  )
)
}\if{html}{\out{</div>}}\if{html}{\out{
<!--html_preserve-->
}}
\if{html}{\out{
<div class="r-output">
}}
\if{html}{\out{
<div class="card">
}}
\if{html}{\out{
<div class="yonder-list-group list-group list-group-flush">
}}
\if{html}{\out{
<button class="list-group-item list-group-item-action" value="choice1">
}}


Pellentesque tristique imperdiet tortor.\if{html}{\out{
</button>
}}
\if{html}{\out{
<button class="list-group-item list-group-item-action" value="choice2">
}}


Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\if{html}{\out{
</button>
}}
\if{html}{\out{
<button class="list-group-item list-group-item-action" value="choice3">
}}


Phasellus purus.\if{html}{\out{
</button>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<!--/html_preserve-->
}}


You can include other elements, too.\if{html}{\out{<div class="r">}}\preformatted{card(
  h5("Title"),
  listGroupInput(
    id = NULL,
    flush = TRUE,
    choices = c("Choice 1", "Choice 2")
  ),
  linkInput(id = NULL, label = "Link"),
  linkInput(id = NULL, label = "Link")
)
}\if{html}{\out{</div>}}\if{html}{\out{
<!--html_preserve-->
}}
\if{html}{\out{
<div class="r-output">
}}
\if{html}{\out{
<div class="card">
}}
\if{html}{\out{
<div class="card-body">
}}
\if{html}{\out{
<h5 class="card-title">
}}


Title\if{html}{\out{
</h5>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<div class="yonder-list-group list-group list-group-flush">
}}
\if{html}{\out{
<button class="list-group-item list-group-item-action" value="Choice 1">
}}


Choice 1\if{html}{\out{
</button>
}}
\if{html}{\out{
<button class="list-group-item list-group-item-action" value="Choice 2">
}}


Choice 2\if{html}{\out{
</button>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<div class="card-body">
}}
\if{html}{\out{
<button class="yonder-link btn btn-link card-link">
}}


Link\if{html}{\out{
</button>
}}
\if{html}{\out{
<button class="yonder-link btn btn-link card-link">
}}


Link\if{html}{\out{
</button>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<!--/html_preserve-->
}}

}

\subsection{Tabbed content in cards}{\if{html}{\out{<div class="r">}}\preformatted{card(
  header = navInput(
    id = "tabs",
    choices = c("Tab 1", "Tab 2", "Tab 3"),
    appearance = "tabs"
  ),
  navContent(
    navPane(
      "Phasellus purus.",
      "Proin neque massa, cursus ut, gravida ut, lobortis eget, lacus.",
      "Phasellus purus."
    ),
    navPane(
      "Donec at pede. Praesent augue.",
      "Pellentesque tristique imperdiet tortor."
    ),
    navPane(
      "Fusce suscipit, wisi nec facilisis facilisis,",
      "est dui fermentum leo, quis tempor ligula erat quis odio.",
      "Donec hendrerit tempor tellus."
    )
  )
)
}\if{html}{\out{</div>}}\if{html}{\out{
<!--html_preserve-->
}}
\if{html}{\out{
<div class="r-output">
}}
\if{html}{\out{
<div class="card">
}}
\if{html}{\out{
<div class="card-header">
}}
\if{html}{\out{
<ul class="yonder-nav nav nav-tabs card-header-tabs" id="tabs">
}}
\if{html}{\out{
<li class="nav-item">
}}
\if{html}{\out{
<button class="nav-link btn btn-link active" value="Tab 1">
}}


Tab 1\if{html}{\out{
</button>
}}
\if{html}{\out{
</li>
}}
\if{html}{\out{
<li class="nav-item">
}}
\if{html}{\out{
<button class="nav-link btn btn-link" value="Tab 2">
}}


Tab 2\if{html}{\out{
</button>
}}
\if{html}{\out{
</li>
}}
\if{html}{\out{
<li class="nav-item">
}}
\if{html}{\out{
<button class="nav-link btn btn-link" value="Tab 3">
}}


Tab 3\if{html}{\out{
</button>
}}
\if{html}{\out{
</li>
}}
\if{html}{\out{
</ul>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<div class="card-body">
}}
\if{html}{\out{
<div class="tab-content">
}}
\if{html}{\out{
<div id="Phasellus purus." class="tab-pane fade" role="tab-panel">
}}


Proin neque massa, cursus ut, gravida ut, lobortis eget, lacus.
Phasellus purus.\if{html}{\out{
</div>
}}
\if{html}{\out{
<div id="Donec at pede. Praesent augue." class="tab-pane fade" role="tab-panel">
}}


Pellentesque tristique imperdiet tortor.\if{html}{\out{
</div>
}}
\if{html}{\out{
<div id="Fusce suscipit, wisi nec facilisis facilisis," class="tab-pane fade" role="tab-panel">
}}


est dui fermentum leo, quis tempor ligula erat quis odio. Donec
hendrerit tempor tellus.\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<!--/html_preserve-->
}}

}

\subsection{Deck of cards}{\if{html}{\out{<div class="r">}}\preformatted{deck(
  card(
    .style \%>\%
      background("info"),
    title = "Nullam tristique",
    p("Fusce sagittis, libero non molestie mollis, magna orci ultrices ",
      "dolor, at vulputate neque nulla lacinia eros."),
    p("Nunc rutrum turpis sed pede."),
    footer = "Cras placerat accumsan nulla."
  ),
  card(
    .style \%>\%
      background("dark") \%>\%
      font("light"),
    title = "Integer placerat",
    p("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec ",
      "hendrerit tempor tellus."),
    footer = "Cras placerat accumsan nulla."
  ),
  card(
    .style \%>\%
      background("primary"),
    title = "Phasellus neque",
    p("Donec at pede. Etiam vel neque nec dui dignissim bibendum."),
    footer = "Cras placerat accumsan nulla."
  )
)
}\if{html}{\out{</div>}}\if{html}{\out{
<!--html_preserve-->
}}
\if{html}{\out{
<div class="r-output">
}}
\if{html}{\out{
<div class="card-deck">
}}
\if{html}{\out{
<div class="card bg-info" title="Nullam tristique">
}}
\if{html}{\out{
<div class="card-body">
}}
\if{html}{\out{
<p class="card-text">
}}


Fusce sagittis, libero non molestie mollis, magna orci ultrices dolor,
at vulputate neque nulla lacinia eros.\if{html}{\out{
</p>
}}
\if{html}{\out{
<p class="card-text">
}}


Nunc rutrum turpis sed pede.\if{html}{\out{
</p>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<div class="card-footer">
}}


Cras placerat accumsan nulla.\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<div class="card bg-dark text-light" title="Integer placerat">
}}
\if{html}{\out{
<div class="card-body">
}}
\if{html}{\out{
<p class="card-text">
}}


Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec
hendrerit tempor tellus.\if{html}{\out{
</p>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<div class="card-footer">
}}


Cras placerat accumsan nulla.\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<div class="card bg-primary" title="Phasellus neque">
}}
\if{html}{\out{
<div class="card-body">
}}
\if{html}{\out{
<p class="card-text">
}}


Donec at pede. Etiam vel neque nec dui dignissim bibendum.\if{html}{\out{
</p>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<div class="card-footer">
}}


Cras placerat accumsan nulla.\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
</div>
}}
\if{html}{\out{
<!--/html_preserve-->
}}

}
}
\seealso{
Other components: 
\code{\link{alert}()},
\code{\link{badge}()},
\code{\link{blockquote}()},
\code{\link{collapsePane}()},
\code{\link{d1}()},
\code{\link{dropdown}()},
\code{\link{img}()},
\code{\link{jumbotron}()},
\code{\link{modal}()},
\code{\link{navContent}()},
\code{\link{popover}()},
\code{\link{pre}()},
\code{\link{toast}()}
}
\concept{components}
