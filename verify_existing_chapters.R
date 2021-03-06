# Find links to fixed html pages

p <- c()
for (f in list.files(pattern = "Rmd$")) {
  t <- readLines(f)
  p <- unique(c(p, t[ grepl("\\[(.*)\\]\\([a-z0-9_]+\\.html\\)", t) ]))

}
p <- gsub("(.*)\\(([a-z0-9_]+\\.html)\\)(.*)", "\\2", p)
p <- sort(p[ !file.exists(p) ])

if(length(p)) {

  print(p)
  warning(length(p), " links point to unavailable chapter.")

} else {
  message("Links OK")
}
