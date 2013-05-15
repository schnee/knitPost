\name{knitPost}
\alias{knitPost}
\title{Knit .Rmd file into a jekyll blog post}
\usage{
  knitPost(post = "2013-05-15-hello-jekyll.Rmd",
    baseUrl = "http://cpsievert.github.com/")
}
\description{
  Code modified from
  https://github.com/jfisher-usgs/jfisher-usgs.github.com/blob/master/R/KnitPost.R
  Also includes ideas from
  https://github.com/supstat/vistat/blob/gh-pages/_bin/knit
}
\examples{
\dontrun{library(devtools); install_github('knitPost', 'cpsievert')}
library(knitPost)
setwd("~/Desktop/github/local/cpsievert.github.com/")
knitPost("2013-05-15-hello-jekyll.Rmd")
}

