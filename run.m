MyCode = @(x) (x(:,1) .^ 2) + 10 * (sin (x(:, 2) .^ 2));
addpath('@MyAlgorithm');

options.nmax = 100;
options.delta = 0.1;
options.epsilon = 0.01;
options....
algorithm = MyAlgorithm(options);

X0 = getInitialDesign(algorithm, ...);
Y0 = MyCode(X0);
Xi = X0
Yi = Y0
 
finished = false;
while ~finished
  Xj = getNextDesign(algorithm, Xi, Yi);
  if isempty(Xj)
    finished = true;
  else
    Yj = MyCode(Xj);
    Xi = [Xi; Xj];
    Yi = [Yi; Yj];
  end
end

displayResult(algorithm, Xi, Yi);