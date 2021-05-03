bookdown::render_book("index.Rmd", "bookdown::gitbook", quiet = TRUE)
bookdown::render_book("index.Rmd", "bookdown::pdf_book", quiet = TRUE)
bookdown::render_book("index.Rmd", "bookdown::epub_book", quiet = TRUE)

# syntax highlighting and automatic linking of R code
paths <- fs::dir_ls("_book", glob = "*.html")
for (path in paths) downlit::downlit_html_path(path, path)
