 A = c(1, 2, 3)
A*5 

A = c(1, 3)
B = c(2, -1)
A+B
A*B

install.packages("matlib")
library(matlib)

xlim = c(0, 6)
ylim = c(0, 6)
plot(xlim, ylim, type="n")
vectors(A, col="yellow")
vectors(B, col="green")
vectors(A+B, col="blue")

x = c(3, 5)
y = c(1, 2)
dis = sqrt((3-1)^2 + (5-2)^2)
print(dis)
dis = sqrt(sum((x-y)^2))
dis
sqrt(t(x)%*%y)

x = c(1, 4)
y = c(5, 2)
x%*%y

A = matrix(c(2, 1, 3, 0, 1, -1), nrow = 2, byrow = T)
A
t(A)

a = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, byrow=T)
a
b = matrix(c(0, 1, 0, 2, -1, 5), byrow=T, nrow=2)
b
a+b

A = matrix(c(1, 0, 2, 5), ncol = 2, byrow = T)
A
C = 2
A*C

A = matrix(c(3, -1, 2, 4, 0, 5), ncol=3, byrow=T)
A
B = matrix(c(3, 6, 4, 4, -2, 3), ncol=2)
B
A%*%B
det(A%*%B)
C = matrix(c(1, 2, 1, 2), nrow=2, byrow=T)
C
det(C)

M = matrix(c(2, 4, 3, 1, 3, 2, 4, 5, 1, 2, 3, 4, 1, 1, 2, 4), nrow=4)
M
det(M)
inverse_M = solve(M)
id = M%*%inverse_M
id%*%M

install.packages("pracma")
library(pracma)

v = c(1, 2, 1)
sqrt(1^2 + 2^2 + 1^2)
t(v)
sqrt(t(v)%*%v)
Norm(v, p=2)

mat = matrix(c(5, 25, 35, 25, 155, 175, 35, 175, 325), nrow=3)
mat
A = eigen(mat, symmetric = TRUE)
A$vectors
A$values

mat %*% A$vectors
dim(mat)
dim(A$vectors)
A$values%*%mat
