bookdown::render_book("index.Rmd", "bookdown::gitbook", quiet = TRUE)
bookdown::render_book("index.Rmd", "bookdown::pdf_book", quiet = TRUE)
bookdown::render_book("index.Rmd", "bookdown::epub_book", quiet = TRUE)

# syntax highlighting and automatic linking of R code
paths <- fs::dir_ls("_book", glob = "*.html")
for (path in paths) downlit::downlit_html_path(path, path)

# add _redirects to get History push state to work when deploying
path <- fs::path("_book", "_redirects")
writeLines("/* /index.html 200", path)
