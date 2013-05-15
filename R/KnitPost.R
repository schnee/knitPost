#' Knit .Rmd file into a jekyll blog post 
#'  
#' Code modified from https://github.com/jfisher-usgs/jfisher-usgs.github.com/blob/master/R/KnitPost.R
#' Also includes ideas from https://github.com/supstat/vistat/blob/gh-pages/_bin/knit
#' @examples
#' \dontrun{library(devtools); install_github('KnitPost', 'cpsievert')}
#' library(KnitPost)
#' setwd("~/Desktop/github/local/cpsievert.github.com/")
#' KnitPost("2013-05-15-hello-jekyll.Rmd")

KnitPost <- function(post="2013-05-15-hello-jekyll.Rmd", baseUrl="/") {
  sourcePath <- file.path(getwd(), "_source", post)
  opts_knit$set(base.url=baseUrl)
  base <- sub("\\.[Rr]md$", "", basename(sourcePath))
  fig.path <- paste0("figs/", base, "/")
  opts_chunk$set(fig.path=fig.path)
  opts_chunk$set(fig.cap="center")
  render_jekyll()
  knit(input, paste('_posts/', base, '.md', sep = ''), envir=parent.frame())
}


