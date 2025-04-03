happiness = function(money, study, play) {
  result = (money + play) / study
  return(result)
}
happiness(100, 50, 10)

## 1부터 N까지 더하는 함수
sum1toN = function(N) {
  result = sum(1:N)
  return(result)
}
sum1toN(10)

sqrt_sum = function(x, y, z) {
  result = sqrt(x^2 + y^2 + z^2)
  return(result)
}
sqrt_sum(1, 2, 3)

distance = function(x1, x2) {
  result = sqrt((x1 - x2)^2)
  return(result)
}
x1 = c(3, 1)
x2 = c(1, 1)
distance(x1, x2)

sqrt_sum2 = function(x, y, z) {
  result = sqrt(x^2 + y^2 + z^2)
  result2 = sum1toN(result)
  return(result2)
}
sqrt_sum2(1, 5, 10)

for (i in 1:10) {
  print(i)
}

number = 1
while (number <= 10) {
  print(number)
  number = number + 1
}

mat = matrix(0, 10, 10)
for (i in 1:10) {
  for (j in 1:10) {
    mat[i, j] = i*j
  }
}
print(mat)

A = matrix(1:12, 4)
print(A)
apply(A, 1, sum)

B = array(1:18, dim = c(3, 3, 2))
print(B)
B[2, 2, 2]
apply(B, 3, diag) # diag : 대각행렬 (대각선 위치 추출))

for (i in seq(1, 10, by=1)) { 
  if (i%%2 == 0) {
    print("짝수")
  }
  else {
    print("홀수")
  }
}

x = 4
y = 1:10
ifelse(x>y, T, F)

# 숙제 