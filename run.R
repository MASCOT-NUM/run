MyCode <- function(X) {
  ...
  return(Y)
}
 
source(”MyAlgorithm.R”)
 
nmax = 100
delta = 0.1
epsilon = 0.01
...
 
init()
 
X0 = initDesign(d)
Y0 = MyCode(X0)
 
Xi = X0
Yi = Y0
 
finished = FALSE
while (!finished) {
 
  Xj = nextDesign(Xi,Yi)
  if (length(xnext) == 0) {
    finished = TRUE
    break
  }
  Yj = MyCode(Xj)
 
  # print(analyseDesign(Xj,Yj))
 
  Xi = rbind(Xi,Xj)
  Yi = rbind(Yi,Yj)
}
 
print(analyseDesign(Xi,Yj))
