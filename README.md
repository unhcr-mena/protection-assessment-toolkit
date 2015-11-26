# Protection Assessment Toolkit

## Chapters

All chapters are written in **Rmarkdown** and encoded in UTF-8. 

Files names should be prefixed by `pem_`, `analyses_` ou `avance_` in function of the section where they are. 

When a new chapter is added, content table shoudl be automatically updated in `index.Rmd` and manually in the file `include\before_body.html`.

## Scripts 

 **R** script `verify_dependency_installation.R` 

 **R** script `make_pdf.R` allow to generate a PDF for the full site. [**Prince XML**]<http://www.princexml.com/> will be required on the computer **Prince XML**.

`Makefile` generate all the site from the **Rmarkdown** files and then call 
`make_pdf.R` to update the PDF of the site.

To execute `Makefile`, go to  **RStudio** & click on *Build All* in the  *Build* tab of the top right panel.