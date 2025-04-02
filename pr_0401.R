a = 2
print(2)
b = 3
print(b)

name = c("유비", "장비", "관우")
print(name)
length(name)
print(name[0])
print(name[1])
print(name[1:3])
print(name[-1])
print(name)

ability = c(70, 98, 99)
print(c(name[1], ability[1]))

장비 = list(
  name = name[2],
  ability = ability[2]
)

print(장비)
장비$name
장비$ability

print(삼국인물)

df = iris
df

df[1, 1]
df[2, 4]
df[2, 5]
df[,5]
df[]
df[,-1]
df[,-c(1:2)]
df

df[1:50,]

mat = matrix(c(1:10), ncol=2)
mat
mat = matrix(c(1:10), nrow=2)
mat

mat = matrix(0, nrow = 100, ncol = 100)
mat
mat = matrix(0, 10, 1)
mat

mat = matrix(c(1:10), 5, 2)
mat

df
class(df)
typeof(df[,5])
print(df[,5])
typeof(df[,4])
typeof(df[,1])
df = as.matrix(iris)
class(df)
typeof(iris)
typeof(df[,5])
typeof(df[,1])

df = read.csv("/Users/parkchaeyeon/Desktop/GitHub/Big Data Analysis/grade.csv")
head(df, 3)
head(df)
print(df)
names(df)

str(df)
summary(df)                  
summary(iris)
summary(iris)[1,1]

View(df)
dim(df)
dim(iris)
nrow(iris)
length(iris)
ncol(iris)

write.csv(df, "/Users/parkchaeyeon/Desktop/GitHub/Big Data Analysis/df.csv")


sum1toN = function(N) {
  result = sum(1:N)
  return(result)
}
sum1toN(100)

sqrt_sum = function(x, y, z) {
  result = sqrt(x^2 + y^2 + z^2)
  return((result))
}
sqrt_sum(4, 55, 14)

sqrt_sum2 = function(x, y, z) {
  result = sqrt (x^2 + y^2 + z^2)
  result2 = sum1toN(as.integer(result))
  return(result2)
}
sqrt_sum2(1, 2, 3)

happiness = function(money, playing, study) {
  result = (money+playing) / study
  return(result)
}
fit = happiness(100, 90, 150)
print(fit)


for (i in 1:10) {print(i)}

number = 1
while (number <= 10) {
  print(number)
  number = number+1
}

for (i in 1:10) {
  if (i%%2 == 0) {
    print("짝수")
  }
  else {
    print("홀수")
  }
}

x = 3
y = -5:5
print(y)

ifelse (x > y, 1, 0)

sum(iris[,5] == "setosa")

# 연습문제 ! - 쉬운 함수를 만들어 마약범죄 소탕하기!

a = data.frame(
  site = 1:10,
  x = c(2, 5, 5, 5, 1, 5, 7, 4, 5, 6),
  y = c(0, 4, 1, 2, 8, 9, 5, 2, 4, 1)
)
print(a)

b = data.frame(
  row.names = c("Axy", "Bxy", "Cxy"),
  col1 = c(1, 4, 8),
  col2 = c(5, 7, 1),
  col3 = c(5, 1, 3)
)
print(b)

d = function(x, y, z, w) {
  result = ((x-z)^2 + (y-w)^2)^(1/2)
  return(result)
}

f = function(name, site) {
  return(d(a[site, 2], a[site, 3], b[name, "col1"], b[name, "col2"]))
}

e = function(num1, num2, num3) {
  if (num1 < num2) {
    if (num1 < num3) {
      return(1)
    }
    else {
      return(3)
    }
  }
  else {
    if (num2 < num3) {
      return (2)
    }
    else {
      return(3)
    }
  }
}

for (i in a$site) {
  print(e(f("Axy", i), f("Bxy", i), f("Cxy", i)))
}
