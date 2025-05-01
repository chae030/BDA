
df = mtcars
names(df)
df$mpg
df$vs
df = df[, 1:6]
names(df)
summary(df)
plot(df, col='red', pch='X')

cova = cov(df)
cora = cor(df)
View(cora)

model = lm(df$wt~df$mpg)
names(model)
summary(model)
real_y = df$wt
predict_y = predict(model, df)

plot(real_y, predict_y, pch='*', col='blue')
cor(real_y, predict_y)
summ = summary(model)
summ$r.squared #r.squared : r의 제곱

model = lm(df$wt~df$mpg+df$cyl+df$hp)
summ = summary(model)
summ$r.squared

names(df)
model = lm(mpg~., data = df)
summary(model)$r.squared
