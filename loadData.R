loadData <- function() {
  filename <- "gss.RData"
  if (!file.exists(filename)) {
    download.file("http://bit.ly/dasi_gss_data", filename)
  }
  load(filename)
  gss
}
