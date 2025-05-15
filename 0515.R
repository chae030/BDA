#sigmolid 함수
sigmolid = function(x) {
  result = 1/(1+exp(-x))
  return(result)
}
plot(sigmolid(-10:10), type = "l", col = 'red')

x = c(2,4,6,8,10,1214,16,18,20)
y = c(0,0,0,0,0,0,1,1,1,1)

beta = rnorm(1)
b = rnorm(1)
z = x*beta + b
pi = sigmolid(z)
entropy = -sum(y*log(pi)+(1-y)*log(1-pi))
print(entropy)

loss = function(x, y) {
  z = x*beta + b
  y = sigmolid(z)
  return(-sum(y*log(pi)+(1-y)*log(1-pi)))
}

result_matrix = matrix(0, nrow = 1000, ncol = 3)
for (i in 1:1000) {
  beta = rnorm(1)
  b = rnorm(1)
  result = loss(x,y)
  result_matrix[i,1] = beta
  result_matrix[i,2] = b
  result_matrix[i,3] = result
}

res = as.data.frame(result_matrix)
names(res) = c("beta", "b", "entropy")
View(res)

install.packages("scatterplot3d")
library(scatterplot3d)
scatterplot3d(res[,1], res[,2], res[,3], color="blue")

min(res[,3])
res[which.min(res[,3]),]

beta = res[which.min(res[,3]),][,1]
b = res[which.min(res[,3]),][,2]
z = x*beta + b

pi = sigmolid(z)
entropy = -sum(y%*%log(pi)+(1-y)%*%log(1-pi))

plot(x,y)

#data_read

df = read.csv("/Users/parkchaeyeon/Desktop/GitHub/Big Data Analysis/new_golfdat.csv")
names(df)
View(df)

df = df[, -1]
df$class = as.factor(df$class)
model = glm(class~., data = df, family = binomial)
summary(model)
pred = predict(model, df, type = "response")
plot(pred)
result = ifelse(pred>0.5, "프로", "초보")
View(result)
