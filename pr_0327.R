A=1
B=2
A+B
# line by line 형태

# 벡터의 선언
이름 = c("유비", "관우", "제갈량")
이름 = c(1, 2, 3)
이름
이름[2:3]
이름[1:2]
이름[2]
이름[c(1,3)]
이름[-1]
이름[-2]
이름[c(TRUE, FALSE, TRUE)]

vec = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
print(vec)

vec = c("유비", 100, 50, 30, "남자")
print(vec)
seq(500)
seq(0, 1, 0.01)

# list 만들기
이름 = c("유비", "관우", "제갈량")
무력 = c(70, 99, 30)
지력 = c(60, 50, 100)
직업 = c("딜러", "탱커", "힐러")
print(c(이름[1], 무력[1], 지력[1], 직업[1]))

유비 = list(
  이름 = "유비",
  무력 = 50,
  지력 = 60,
  직업 = "딜러"
)
print(유비)
유비$직업

# dataframe 만들기
삼국인물 = data.frame(이름, 무력, 지력, 직업)
print(삼국인물)

삼국인물[1, 1]
삼국인물[3, 4]
삼국인물$직업
삼국인물["직업"]
삼국인물[1:2, 1:2]
삼국인물[, 4]

삼국인물$지력 > 55
삼국인물[c(삼국인물$지력)>55,1]

# matrix 만들기
mat = matrix(c(1, 2, 3, 4), nrow = 2)
mat1 = matrix(c(1, 2, 3, 4, 5, 6), ncol = 2)
mat2 = matrix(0, nrow=3, ncol=3)
zeros = matrix(0, nrow = 100, ncol = 1)

for (i in 1:100) {
  zeros[i, 1] = i^2
}
plot(zeros, type="o")

삼국인물
삼국인물[c(삼국인물$직업)=="힐러", 3]
삼국인물[c(삼국인물$직업)=="힐러", "지력"]

class(삼국인물)
mat = as.matrix(삼국인물)
class(mat)
df = as.data.frame(mat)
typeof(df$무력)
typeof(as.numeric(df$무력))

삼국인물
write.csv(df, "/Users/parkchaeyeon/Desktop/3-1/빅데이터분석/df.csv", fileEncoding="cp949")
df = read.csv("/Users/parkchaeyeon/Desktop/3-1/빅데이터분석/df.csv", fileEncoding="cp949")
names(df)
head(df)
