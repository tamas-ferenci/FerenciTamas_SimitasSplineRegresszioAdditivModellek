bookdown::render_book("index.Rmd", "bookdown::pdf_book")
bookdown::render_book("index.Rmd", "bookdown::gitbook")
bookdown::render_book("index.Rmd", "bookdown::epub_book")
bookdown::render_book("index.Rmd", "beamer_presentation")
file.rename("FerenciTamas_SimitasSplineRegresszioAdditivModellek.pdf",
            "./docs/FerenciTamas_SimitasSplineRegresszioAdditivModellek_handout.pdf")
unlink(stringr::str_replace(setdiff(list.files(pattern = "*.Rmd"), "index.Rmd"), "Rmd", "R"))
for(f in setdiff(list.files(pattern = "*.Rmd"), "index.Rmd")) knitr::purl(f)