MyCode = function(X) { ... return(Y) }
source("MyAlgorithm.R")

options = list(nmax = 100, delta = 0.1, epsilon = 0.01, ...)
algorithm = MyAlgorithm(options)

X0 = getInitialDesign(algorithm, ...)
Y0 = MyCode(X0)
Xi = X0
Yi = Y0

finished = FALSE
while (!finished) {
  Xj = getNextDesign(algorithm,Xi,Yi)
  if (is.null(Xj) | length(Xj) == 0) {
    finished = TRUE
  } else {
    Yj = MyCode(Xj)
    Xi = rbind(Xi,Xj)
    Yi = rbind(Yi,Yj)
  }
}

print(displayResults(algorithm,Xi,Yi))