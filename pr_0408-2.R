# 유한차분 (finite difference)
fd = function(f, x, h = 0.00001) {
  result = (f(x + h) - f(x)) / ((x + h) - x)
  return(result)
}
fd

fx = function (x) {
  result = -x^2 +6*x -6
  return(result)
}

plot(fx(1:5), type = "l", col = "purple")
curve(fx, 1, 5)
curve(fx, 0, 10)

fd(fx, x=2, h=0.00000000001)

fxx = expression(-exp(x^2) + 6*x^(1/3) -log(6), 'x')
d = c(D(fxx, 'x'))

fxxx = function(x) {
  result = 6 * (x^((1/3) - 1) * (1/3)) - exp(x^2) * (2 * x)
  return(result)
}

fxxxx = function(x) {
  result =eval(d[[1]])
  return(result)
}
fxxxx(3)

fy = function(y) {
  result = y^5 -1/y + cos(y)^y
  return(result)
}

plot(fy(seq(from = -1, to = 1, by = 0.01)), type = 'l', col = 'gold', lwd = '2')

plot(fd(f = fy, x = 1:10), type = 'o', lty = 2, col = 'orange')     

func = function(x) {
  result = 1/((x+1) * sqrt(x))
  return(result)
}

plot(func(seq(from = 0, to = 10, by = 0.01)), type = 'l', col = 'red')
curve(func, 0, 5)

integrate(func, lower = 0, upper = Inf)

my_integral = function (f, a, b, n) {
  result = 0
  h = (b-a)/n
  for (i in 1:n) {
    result = result + h*f(a+i*h)
  }
  return(result)
}

my_integral(func, 0, 5, 10000000)
