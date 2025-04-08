melthus = function(N0, r, t) {
  result = N0*exp(r*t)
  return (result)
}

result = melthus (N0 = 1, r = 0.1, 1:30)
plot(result, type = "o", col = 'red')