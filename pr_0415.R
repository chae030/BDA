fx = function(x) {
  result = x^2
  return (result)
}

curve(fx, -2, 2, col = 'blue')
integrate(fx, -2, 2)
x1 = -2
x2 = 2
y1 = 0
y2 = 4

X = runif(1000, x1, x2)
Y = runif(1000, y1, y2)
points(X, Y, col = 'red')

temp = sum(Y < fx(X))/2
temp
