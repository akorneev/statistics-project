source("loadData.R")

analyseQuick <- function(){
  gss <- loadData()
  sol <- gss[, c("parsol", "kidssol")]
  sol <- sol[!is.na(sol$parsol), ]
  with(sol, {
    ftable(parsol, kidssol)
    plot(parsol, kidssol, xlab="parsol", ylab="kidsol")
    head(sol, n=30)
  })
}
